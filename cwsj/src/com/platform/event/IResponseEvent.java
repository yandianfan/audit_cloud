package com.platform.event;

import java.io.Serializable;

//public abstract interface IResponseEvent implements Cloneable, Serializable
public abstract interface IResponseEvent  extends Serializable
{
  public abstract boolean isOne();

  public abstract void setCostTime(long paramLong);

  public abstract long getCostTime();

  public abstract boolean isSuccess();
}