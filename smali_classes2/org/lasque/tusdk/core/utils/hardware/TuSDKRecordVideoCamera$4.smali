.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyResult(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;->a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;->a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;->a:Lorg/lasque/tusdk/core/video/TuSDKVideoResult;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;->onMovieRecordComplete(Lorg/lasque/tusdk/core/video/TuSDKVideoResult;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$4;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v0

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->Unknow:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-interface {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;->onMovieRecordFailed(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    :goto_0
    return-void
.end method
