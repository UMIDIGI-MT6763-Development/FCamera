.class Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface$TuSdkAutoFocusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->notifyFoucs(Landroid/graphics/PointF;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$1;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFocus(ZLorg/lasque/tusdk/core/seles/sources/SelesBaseCameraInterface;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase$1;->a:Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;

    invoke-static {p2, p1}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->a(Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;Z)V

    return-void
.end method
