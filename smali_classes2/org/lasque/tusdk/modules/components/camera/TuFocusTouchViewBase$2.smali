.class Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase$2;->a:Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;

    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->getLastPoint()Landroid/graphics/PointF;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;->a(Lorg/lasque/tusdk/modules/components/camera/TuFocusTouchViewBase;Landroid/graphics/PointF;)V

    return-void
.end method
