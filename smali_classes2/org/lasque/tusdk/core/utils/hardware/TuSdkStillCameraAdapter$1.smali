.class Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

.field final synthetic b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;->b:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$1;->a:Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;->a(Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter;Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraAdapter$CameraState;)V

    return-void
.end method
