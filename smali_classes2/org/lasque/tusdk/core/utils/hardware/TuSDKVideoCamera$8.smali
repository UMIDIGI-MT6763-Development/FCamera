.class Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->a([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Lorg/lasque/tusdk/core/face/FaceAligment;

.field final synthetic b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

.field final synthetic c:Z

.field final synthetic d:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;[Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    iput-object p2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->a:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iput-object p3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iput-boolean p4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-static {v0}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->e(Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;)Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCameraFocusViewInterface;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;

    iget-object v1, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->a:[Lorg/lasque/tusdk/core/face/FaceAligment;

    iget-object v2, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->b:Lorg/lasque/tusdk/core/struct/TuSdkSize;

    iget-boolean v3, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->c:Z

    iget-object v4, p0, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera$8;->d:Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;

    invoke-virtual {v4}, Lorg/lasque/tusdk/core/utils/hardware/TuSDKVideoCamera;->isEnableFaceDetection()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->onFaceAligmented([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)V

    return-void
.end method
