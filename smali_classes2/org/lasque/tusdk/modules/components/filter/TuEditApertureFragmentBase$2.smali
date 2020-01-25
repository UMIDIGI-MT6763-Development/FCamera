.class Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;
.super Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchBegin(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;Z)V

    return-void
.end method

.method public onTouchEnd(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->a(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;Z)V

    return-void
.end method

.method public onTouchMultipleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 1

    iget-object p2, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    invoke-static {p2}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->d(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-string p3, "radius"

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepSpace()F

    move-result p4

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getSpace()F

    move-result v0

    div-float/2addr p4, v0

    invoke-virtual {p2, p3, p4}, Lorg/lasque/tusdk/core/seles/SelesParameters;->stepFilterArg(Ljava/lang/String;F)V

    const-string p3, "degree"

    invoke-virtual {p2, p3}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result p3

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepDegree()F

    move-result p1

    const/high16 p4, 0x43b40000    # 360.0f

    div-float/2addr p1, p4

    add-float/2addr p3, p1

    const/4 p1, 0x0

    cmpg-float p1, p3, p1

    const/high16 p4, 0x3f800000    # 1.0f

    if-gez p1, :cond_1

    add-float/2addr p3, p4

    goto :goto_0

    :cond_1
    cmpl-float p1, p3, p4

    if-lez p1, :cond_2

    sub-float/2addr p3, p4

    :cond_2
    :goto_0
    invoke-virtual {p2, p3}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    :cond_3
    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    invoke-static {p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->e(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V

    return-void
.end method

.method public onTouchSingleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 2

    iget-object p3, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    invoke-static {p3}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->b(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    const-string p4, "centerX"

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepPoint()Landroid/graphics/PointF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p3, p4, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->stepFilterArg(Ljava/lang/String;F)V

    const-string p4, "centerY"

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->getStepPoint()Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    invoke-virtual {p3, p4, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->stepFilterArg(Ljava/lang/String;F)V

    iget-object p1, p0, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase$2;->a:Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;

    invoke-static {p1}, Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;->c(Lorg/lasque/tusdk/modules/components/filter/TuEditApertureFragmentBase;)V

    return-void
.end method
