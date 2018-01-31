package com.cwsj.util;

import java.io.ByteArrayInputStream;  
import java.io.File;
import java.io.IOException;  
import java.io.InputStream;  
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;  
import java.util.List;  
import java.util.Map;  
import java.util.Map.Entry;  

import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.poi.POIXMLDocument;  
import org.apache.poi.openxml4j.opc.OPCPackage;  
import org.apache.poi.ss.format.CellFormatType;
import org.apache.poi.xwpf.usermodel.XWPFDocument;
import org.apache.poi.xwpf.usermodel.XWPFParagraph;  
import org.apache.poi.xwpf.usermodel.XWPFRun;  
import org.apache.poi.xwpf.usermodel.XWPFTable;  
import org.apache.poi.xwpf.usermodel.XWPFTableCell;  
import org.apache.poi.xwpf.usermodel.XWPFTableRow;  
import org.openxmlformats.schemas.spreadsheetml.x2006.main.CTBorder;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTFonts;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTHpsMeasure;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTPPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTRPr;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTbl;
import org.openxmlformats.schemas.wordprocessingml.x2006.main.CTTblBorders;
  
/** 
 * 适用于word 2007 
 * poi 版本 3.7 
 */  
public class WordUtil {  
  
    /** 
     * 根据指定的参数值、模板，生成 word 文档 
     * @param param 需要替换的变量 
     * @param template 模板 
     */  
    public static CustomXWPFDocument generateWord(Map<String, Object> param, String template) {  
        CustomXWPFDocument doc = null;  
        try {  
            OPCPackage pack = POIXMLDocument.openPackage(template);  
            doc = new CustomXWPFDocument(pack);  
            if (param != null && param.size() > 0) {  
                  
                //处理段落  
                List<XWPFParagraph> paragraphList = doc.getParagraphs();  
                processParagraphs(paragraphList, param, doc);    
                //处理表格  
               Iterator<XWPFTable> it = doc.getTablesIterator();  
               while (it.hasNext()) {  
                    XWPFTable table = it.next();  
                    List<XWPFTableRow> rows = table.getRows();  
                    for (XWPFTableRow row : rows) {  
                        List<XWPFTableCell> cells = row.getTableCells();  
                        for (XWPFTableCell cell : cells) {  
                           List<XWPFParagraph> paragraphListTable =  cell.getParagraphs();  
                            processParagraphs(paragraphListTable, param, doc);  
                       }  
                    }  
                }  
            }  
        } catch (Exception e) {  
           e.printStackTrace();  
           throw new RuntimeException(e);
        }  
       return doc;  
    }  
    
    /** 
     * 根据指定的参数值、模板，生成 word 文档 (根据单模板生成多页合并数据)
     * @param param 需要替换的变量 
     * @param template 模板 
     */  
    public static CustomXWPFDocument generateWord(ArrayList<HashMap> list, String template) {  
        CustomXWPFDocument doc = null;  
        CustomXWPFDocument newDoc = new CustomXWPFDocument();
        try {  
            OPCPackage pack = POIXMLDocument.openPackage(template);  
            doc = new CustomXWPFDocument(pack);  
//            for(int i=0;i<list.size();i++){
//                //处理表格  
//                Iterator<XWPFTable> it = doc.getTablesIterator(); 
//                while (it.hasNext()) {  
//                     XWPFTable tableNew = newDoc.createTable();
//                     XWPFTable table = it.next();  
//                     tableNew.setColBandSize(table.getColBandSize());
//                     tableNew.setInsideHBorder(table.getInsideHBorderType(), table.getInsideHBorderSize(), table.getInsideHBorderSpace(), table.getInsideHBorderColor());
//                     tableNew.setInsideVBorder(table.getInsideVBorderType(), table.getInsideVBorderSize(), table.getInsideVBorderSpace(), table.getInsideVBorderColor());
//                     tableNew.setCellMargins(table.getCellMarginTop(), table.getCellMarginLeft(), table.getCellMarginBottom(), table.getCellMarginRight());
//                     tableNew.setRowBandSize(table.getRowBandSize());
//                     tableNew.setStyleID(table.getStyleID());
//                     tableNew.setWidth(table.getWidth());
//                     
//                     List<XWPFTableRow> rows = table.getRows();  
//                     for (XWPFTableRow row : rows) {  
//                         XWPFTableRow newRow=tableNew.createRow();
//                         newRow.setHeight(row.getHeight());
//                         List<XWPFTableCell> cells = row.getTableCells();  
//                         for (XWPFTableCell cell : cells) {  
//                             XWPFTableCell newCell=newRow.createCell();
//                             List<XWPFParagraph> paragraphListTable =  cell.getParagraphs();
//                             processParagraphs(paragraphListTable, list.get(i), doc,newCell);  
//                        }  
//                     }  
//                 }       
//
//             }
 
            // 处理段落
                List<XWPFParagraph> paragraphList = doc.getParagraphs();
                processParagraphs(paragraphList, list, doc,newDoc);    

        } catch (Exception e) {  
           e.printStackTrace();  
        }  
       return newDoc;  
    }    
    /** 
     * 处理段落 
     * @param paragraphList 
     */  
    public static void processParagraphs(List<XWPFParagraph> paragraphList,Map<String, Object> param,CustomXWPFDocument doc){  
        if(paragraphList != null && paragraphList.size() > 0){  
           for(XWPFParagraph paragraph:paragraphList){  
                List<XWPFRun> runs = paragraph.getRuns();  
                for (XWPFRun run : runs) {  
                   String text = run.getText(0);  
                    if(text != null){  
                       boolean isSetText = false;  
                        for (Entry<String, Object> entry : param.entrySet()) {  
                            String key = entry.getKey();  
                            if(text.indexOf(key) != -1){  
                                isSetText = true;  
                                Object value = entry.getValue();  
                                if (value instanceof String) {//文本替换  
                                   text = text.replace(key, value.toString());  
                                } 
//                                else if (value instanceof Map) {//图片替换  
//                                   text = text.replace(key, "");  
//                                   Map pic = (Map)value;  
//                                    int width = Integer.parseInt(pic.get("width").toString());  
//                                    int height = Integer.parseInt(pic.get("height").toString());  
//                                   int picType = getPictureType(pic.get("type").toString());  
//                                   byte[] byteArray = (byte[]) pic.get("content");  
//                                    ByteArrayInputStream byteInputStream = new ByteArrayInputStream(byteArray);  
//                                    try {  
//                                        int ind = doc.addPicture(byteInputStream,picType);  
//                                        doc.createPicture(ind, width , height,paragraph);  
//                                    } catch (Exception e) {  
//                                        e.printStackTrace();  
//                                   }  
//                               }  
                           }  
                        }  
                        if(isSetText){  
                            run.setText(text,0);  
                        }  
                    }  
               }  
            }  
        }  
    }  
 
    /** 
     * 处理段落 
     * @param paragraphList 
     */  
    public static void processParagraphs(List<XWPFParagraph> paragraphList,ArrayList<HashMap> list,CustomXWPFDocument doc,CustomXWPFDocument newDoc){  
        for(int i=0;i<list.size();i++){
            Map<String, Object> param=list.get(i);
            if(paragraphList != null && paragraphList.size() > 0){  
                for(XWPFParagraph paragraph:paragraphList){  
                    XWPFParagraph newParagraph = newDoc.createParagraph();
                    newParagraph.setAlignment(paragraph.getAlignment());
                    newParagraph.setBorderBetween(paragraph.getBorderBetween());
                    newParagraph.setBorderBottom(paragraph.getBorderBottom());
                    newParagraph.setBorderLeft(paragraph.getBorderLeft());
                    newParagraph.setBorderRight(paragraph.getBorderRight());
                    newParagraph.setBorderTop(paragraph.getBorderTop());
                    newParagraph.setIndentationFirstLine(paragraph.getIndentationFirstLine());
                    newParagraph.setIndentationHanging(paragraph.getIndentationHanging());
                    newParagraph.setIndentationLeft(paragraph.getIndentationLeft());
                    newParagraph.setIndentationRight(paragraph.getIndentationRight());
                    newParagraph.setNumID(paragraph.getNumID());
                    newParagraph.setSpacingAfter(paragraph.getSpacingAfter());
                    newParagraph.setSpacingBefore(paragraph.getSpacingBefore());
                    newParagraph.setSpacingLineRule(paragraph.getSpacingLineRule());
                    newParagraph.setStyle(paragraph.getStyle());
                    newParagraph.setVerticalAlignment(paragraph.getVerticalAlignment());
                    newParagraph.setSpacingAfterLines(paragraph.getSpacingAfterLines());
                    newParagraph.setSpacingBeforeLines(paragraph.getSpacingBeforeLines());
                     List<XWPFRun> runs = paragraph.getRuns();  
                     for (XWPFRun run : runs) {  
                        String text = run.getText(0);
                        String pictext = run.getPictureText();
                         if(text != null){  
                             for (Entry<String, Object> entry : param.entrySet()) {  
                                 String key = entry.getKey();  
                                 if(text.indexOf(key) != -1){  
                                     Object value = entry.getValue();  
                                     text = text.replace(key, value.toString());  
//                                     else if (value instanceof Map) {//图片替换  
//                                         text = text.replace(key, "");  
//                                         Map pic = (Map)value;  
//                                         int width = Integer.parseInt(pic.get("width").toString());  
//                                         int height = Integer.parseInt(pic.get("height").toString());  
//                                         int picType = getPictureType(pic.get("type").toString());  
//                                         byte[] byteArray = (byte[]) pic.get("content");  
//                                         ByteArrayInputStream byteInputStream = new ByteArrayInputStream(byteArray);  
//                                         try {  
//                                             String ind = doc.addPictureData(byteInputStream,picType);  
//                                            // int ind = doc.getPosOfParagraph(paragraph) ;
//                                             newDoc.createPicture(Integer.parseInt(ind), width , height,paragraph);  
//                                         } catch (Exception e) {  
//                                             e.printStackTrace();  
//                                        }  
//                                    }                             
                                }  
                             } 
                             XWPFRun newRun = newParagraph.createRun();
                             newRun.setBold(run.isBold());
                             newRun.setItalic(run.isItalic());
                             newRun.setText(text);
                             newRun.setColor(run.getColor());
                             newRun.setFontFamily(run.getFontFamily());
                             newRun.setFontSize(run.getFontSize());
                             newRun.setUnderline(run.getUnderline());
                             newRun.setSubscript(run.getSubscript());
                             newRun.setTextPosition(run.getTextPosition()); 
//                             CTRPr oldpRpr = getRunCTRPr(paragraph, run);
//                             CTRPr newpRpr = getRunCTRPr(newParagraph, newRun);
//                             
//                               // 设置字体
//                               CTFonts oldfonts = oldpRpr.isSetRFonts() ? oldpRpr.getRFonts() : oldpRpr.addNewRFonts();
//                               CTFonts newfonts = newpRpr.isSetRFonts() ? newpRpr.getRFonts() : newpRpr.addNewRFonts();
//                               newfonts.setAscii(oldfonts.getAscii());
//                               newfonts.setEastAsia(oldfonts.getEastAsia());
//                               newfonts.setHAnsi(oldfonts.getHAnsi());
//
//                               // 设置字体大小
//                               CTHpsMeasure oldsz = oldpRpr.isSetSz() ? oldpRpr.getSz() : oldpRpr.addNewSz();
//                               CTHpsMeasure newsz = newpRpr.isSetSz() ? newpRpr.getSz() : newpRpr.addNewSz();
//                               newsz.setVal(oldsz.getVal());
//
//                               CTHpsMeasure oldszCs = oldpRpr.isSetSzCs() ? oldpRpr.getSzCs() : oldpRpr.addNewSzCs();
//                               CTHpsMeasure newszCs = newpRpr.isSetSzCs() ? newpRpr.getSzCs() : newpRpr.addNewSzCs();
//                               newszCs.setVal(oldszCs.getVal());
                             
                             setParagraphRunFontInfo(newParagraph,newRun,text,"微软雅黑","12");
                             if (text.equals("【当前日期】"))
                             {
                                 newParagraph.setPageBreak(true);
                             }
                         }  
                         if(pictext != null){
                             XWPFRun newRun = newParagraph.createRun();
                             newRun.setBold(run.isBold());
                             newRun.setItalic(run.isItalic());
                             newRun.setText(pictext);
                             newRun.setColor(run.getColor());
                             newRun.setFontFamily(run.getFontFamily());
                             newRun.setFontSize(run.getFontSize());
                             newRun.setUnderline(run.getUnderline());
                             newRun.setSubscript(run.getSubscript());
                             newRun.setTextPosition(run.getTextPosition());                        
                         }
                    }  
                 }  
             }           
        }

    }    
    
    /** 
     * 处理段落 ---批量生成合并的word
     * @param paragraphList 
     */  
    public static void processParagraphs(List<XWPFParagraph> paragraphList,Map<String, Object> param,CustomXWPFDocument doc,XWPFTableCell newCell){  
            if(paragraphList != null && paragraphList.size() > 0){  
                for(XWPFParagraph paragraph:paragraphList){  
                     XWPFParagraph newParagraph = newCell.addParagraph();
                     newParagraph.setAlignment(paragraph.getAlignment());
                     newParagraph.setBorderBetween(paragraph.getBorderBetween());
                     newParagraph.setBorderBottom(paragraph.getBorderBottom());
                     newParagraph.setBorderLeft(paragraph.getBorderLeft());
                     newParagraph.setBorderRight(paragraph.getBorderRight());
                     newParagraph.setBorderTop(paragraph.getBorderTop());
                     newParagraph.setIndentationFirstLine(paragraph.getIndentationFirstLine());
                     newParagraph.setIndentationHanging(paragraph.getIndentationHanging());
                     newParagraph.setIndentationLeft(paragraph.getIndentationLeft());
                     newParagraph.setIndentationRight(paragraph.getIndentationRight());
                     newParagraph.setNumID(paragraph.getNumID());
                     newParagraph.setSpacingAfter(paragraph.getSpacingAfter());
                     newParagraph.setSpacingBefore(paragraph.getSpacingBefore());
                     newParagraph.setSpacingLineRule(paragraph.getSpacingLineRule());
                     newParagraph.setStyle(paragraph.getStyle());
                     newParagraph.setVerticalAlignment(paragraph.getVerticalAlignment());

                     List<XWPFRun> runs = paragraph.getRuns();
                     for (XWPFRun run : runs) {  
                        String text = run.getText(0);  
                         if(text != null){  
                            boolean isSetText = false;  
                             for (Entry<String, Object> entry : param.entrySet()) {  
                                 String key = entry.getKey();  
                                 if(text.indexOf(key) != -1){  
                                     isSetText = true;  
                                     Object value = entry.getValue();  
                                     if (value instanceof String) {//文本替换  
                                        text = text.replace(key, value.toString());  
                                     } 
//                                   else if (value instanceof Map) {//图片替换  
//                                   text = text.replace(key, "");  
//                                   Map pic = (Map)value;  
//                                    int width = Integer.parseInt(pic.get("width").toString());  
//                                    int height = Integer.parseInt(pic.get("height").toString());  
//                                   int picType = getPictureType(pic.get("type").toString());  
//                                   byte[] byteArray = (byte[]) pic.get("content");  
//                                    ByteArrayInputStream byteInputStream = new ByteArrayInputStream(byteArray);  
//                                    try {  
//                                        int ind = doc.addPicture(byteInputStream,picType);  
//                                        doc.createPicture(ind, width , height,paragraph);  
//                                    } catch (Exception e) {  
//                                        e.printStackTrace();  
//                                   }  
//                               }  
                                }  
                             }                              
                             XWPFRun newRun = newParagraph.createRun();
                             newRun.setBold(run.isBold());
                             newRun.setItalic(run.isItalic());
                             newRun.setText(text);
                             newRun.setColor(run.getColor());
                             newRun.setFontFamily(run.getFontFamily());
                             newRun.setFontSize(run.getFontSize());
                             newRun.setUnderline(run.getUnderline());
                             newRun.setSubscript(run.getSubscript());
                             newRun.setTextPosition(run.getTextPosition());   
                             setParagraphRunFontInfo(newParagraph,newRun,text,"微软雅黑","22");
                         }  
                    } 
                     
                 }  
             }              

    }   
    /** 
     * 根据图片类型，取得对应的图片类型代码 
     * @param picType 
     * @return int 
     */  
    private static int getPictureType(String picType){  
        int res = CustomXWPFDocument.PICTURE_TYPE_PICT;  
       if(picType != null){  
            if(picType.equalsIgnoreCase("png")){  
               res = CustomXWPFDocument.PICTURE_TYPE_PNG;  
           }else if(picType.equalsIgnoreCase("dib")){  
                res = CustomXWPFDocument.PICTURE_TYPE_DIB;  
           }else if(picType.equalsIgnoreCase("emf")){  
               res = CustomXWPFDocument.PICTURE_TYPE_EMF;  
           }else if(picType.equalsIgnoreCase("jpg") || picType.equalsIgnoreCase("jpeg")){  
                res = CustomXWPFDocument.PICTURE_TYPE_JPEG;  
           }else if(picType.equalsIgnoreCase("wmf")){  
                res = CustomXWPFDocument.PICTURE_TYPE_WMF;  
            }  
        }  
        return res;  
    }  
    /** 
     * 将输入流中的数据写入字节数组 
     * @param in 
     * @return 
     */  
    public static byte[] inputStream2ByteArray(InputStream in,boolean isClose){  
        byte[] byteArray = null;  
        try {  
            int total = in.available();  
            byteArray = new byte[total];  
            in.read(byteArray);  
        } catch (IOException e) {  
            e.printStackTrace();  
        }finally{  
            if(isClose){  
                try {  
                    in.close();  
                } catch (Exception e2) {  
                    System.out.println("关闭流失败");  
                }  
            }  
       }  
        return byteArray;  
    } 
    
    /**
     * @Description: 得到段落CTPPr
     */
    public CTPPr getParagraphCTPPr(XWPFParagraph p) {
      CTPPr pPPr = null;
      if (p.getCTP() != null) {
        if (p.getCTP().getPPr() != null) {
          pPPr = p.getCTP().getPPr();
        } else {
          pPPr = p.getCTP().addNewPPr();
        }
      }
      return pPPr;
    }

    /**
     * @Description: 得到XWPFRun的CTRPr
     */
    public static CTRPr getRunCTRPr(XWPFParagraph p, XWPFRun pRun) {
      CTRPr pRpr = null;
      if (pRun.getCTR() != null) {
        pRpr = pRun.getCTR().getRPr();
        if (pRpr == null) {
          pRpr = pRun.getCTR().addNewRPr();
        }
      } else {
        pRpr = p.getCTP().addNewR().addNewRPr();
      }
      return pRpr;
    }

    /**
     * @Description 设置字体信息
     */
    public static void setParagraphRunFontInfo(XWPFParagraph p, XWPFRun pRun,
        String content, String fontFamily, String fontSize) {
      CTRPr pRpr = getRunCTRPr(p, pRun);
      if (StringUtils.isNotBlank(content)) {
        pRun.setText(content);
      }
      // 设置字体
      CTFonts fonts = pRpr.isSetRFonts() ? pRpr.getRFonts() : pRpr
          .addNewRFonts();
      fonts.setAscii(fontFamily);
      fonts.setEastAsia(fontFamily);
      fonts.setHAnsi(fontFamily);

      // 设置字体大小
      CTHpsMeasure sz = pRpr.isSetSz() ? pRpr.getSz() : pRpr.addNewSz();
      sz.setVal(new BigInteger(fontSize));

      CTHpsMeasure szCs = pRpr.isSetSzCs() ? pRpr.getSzCs() : pRpr
          .addNewSzCs();
      szCs.setVal(new BigInteger(fontSize));
    }



    private void deleteFile(File... files){
        for(File file:files){
            if(file.exists()){
                file.delete();
            }
        }
    }
    
    private void setResponse(HttpServletResponse response) {
        response.setContentType("application/msword");
        response.setHeader("Content-Disposition", "attachment; filename=taskbook.doc");
    }

    
}  
