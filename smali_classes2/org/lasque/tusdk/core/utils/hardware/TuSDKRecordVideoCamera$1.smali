.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/movie/muxer/TuSDKMovieClipper$TuSDKMovieClipperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onDone(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingResultWithVideoFile(Ljava/io/File;)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1

    iget-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    sget-object v0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;->SaveFailed:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordError;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    sget-object v1, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;->Saving:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->notifyRecordingState(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$RecordState;)V

    return-void
.end method
