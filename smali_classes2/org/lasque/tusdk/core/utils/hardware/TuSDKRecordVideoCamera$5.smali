.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;FF)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    iput p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;->a:F

    iput p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;->c:Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera;->getVideoDelegate()Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;

    move-result-object v0

    iget v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;->a:F

    iget v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$5;->b:F

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKRecordVideoCamera$TuSDKRecordVideoCameraDelegate;->onMovieRecordProgressChanged(FF)V

    return-void
.end method
