.class Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/view/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ZoomVariables"
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/view/TouchImageView;

.field public focusX:F

.field public focusY:F

.field public scale:F

.field public scaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Lorg/lasque/tusdk/core/view/TouchImageView;FFFLandroid/widget/ImageView$ScaleType;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->a:Lorg/lasque/tusdk/core/view/TouchImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->scale:F

    iput p3, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->focusX:F

    iput p4, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->focusY:F

    iput-object p5, p0, Lorg/lasque/tusdk/core/view/TouchImageView$ZoomVariables;->scaleType:Landroid/widget/ImageView$ScaleType;

    return-void
.end method
