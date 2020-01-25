.class Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->notifyFoucs(Landroid/graphics/PointF;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;Z)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;->b:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;

    iput-boolean p2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;->b:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;Z)V

    iget-boolean p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$1;->b:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;

    invoke-static {p1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;

    move-result-object p1

    invoke-interface {p1}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkStillCameraInterface;->captureImage()V

    :cond_0
    return-void
.end method
