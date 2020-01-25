.class public interface abstract Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TuSDKRecordVideoCameraDelegate"
.end annotation


# virtual methods
.method public abstract onMovieRecordComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
.end method

.method public abstract onMovieRecordFailed(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V
.end method

.method public abstract onMovieRecordProgressChanged(FF)V
.end method

.method public abstract onMovieRecordStateChanged(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V
.end method
