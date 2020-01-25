.class public interface abstract Lcom/freeme/camera/common/sound/ISoundPlayback;
.super Ljava/lang/Object;
.source "ISoundPlayback.java"


# static fields
.field public static final FOCUS_COMPLETE:I = 0x0

.field public static final SHUTTER_CLICK:I = 0x3

.field public static final START_VIDEO_RECORDING:I = 0x1

.field public static final STOP_VIDEO_RECORDING:I = 0x2


# virtual methods
.method public abstract pause()V
.end method

.method public abstract play(I)V
.end method

.method public abstract play(IF)V
.end method

.method public abstract release()V
.end method
