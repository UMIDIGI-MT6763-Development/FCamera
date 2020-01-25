.class public interface abstract Lcom/freeme/camera/feature/setting/dng/IDngConfig;
.super Ljava/lang/Object;
.source "IDngConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;
    }
.end annotation


# static fields
.field public static final DNG_OFF:Ljava/lang/String; = "off"

.field public static final DNG_ON:Ljava/lang/String; = "on"

.field public static final KEY_DNG:Ljava/lang/String; = "key_dng"


# virtual methods
.method public abstract notifyOverrideValue(Z)V
.end method

.method public abstract onModeClosed()V
.end method

.method public abstract requestChangeOverrideValues()V
.end method

.method public abstract setDngStatus(ZZ)V
.end method

.method public abstract setDngValueUpdateListener(Lcom/freeme/camera/feature/setting/dng/IDngConfig$OnDngValueUpdateListener;)V
.end method
