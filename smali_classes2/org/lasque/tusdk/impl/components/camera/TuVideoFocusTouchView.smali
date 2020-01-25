.class public Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;
.super Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public buildFaceDetectionView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFaceDetectionLayoutID()I
    .locals 2

    iget v0, p0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->b:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, "tusdk_impl_component_camera_face_detection_view"

    invoke-static {v0}, Lorg/lasque/tusdk/core/TuSdkContext;->getLayoutResId(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->b:I

    :cond_0
    iget v0, p0, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->b:I

    return v0
.end method

.method public notifyFilterConfigView(Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;)V
    .locals 0

    return-void
.end method

.method public onFaceAligmented([Lorg/lasque/tusdk/core/face/FaceAligment;Lorg/lasque/tusdk/core/struct/TuSdkSize;ZZ)V
    .locals 4

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/camera/TuVideoFocusTouchView;->hiddenFaceViews()V

    if-eqz p1, :cond_4

    array-length v0, p1

    if-lez v0, :cond_4

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p3, :cond_1

    iget p3, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->height:I

    iget p2, p2, Lorg/lasque/tusdk/core/struct/TuSdkSize;->width:I

    invoke-static {p3, p2}, Lorg/lasque/tusdk/core/struct/TuSdkSize;->create(II)Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object p2

    :cond_1
    const/4 p3, 0x0

    array-length v0, p1

    :goto_0
    if-ge p3, v0, :cond_4

    aget-object v1, p1, p3

    iget-object v2, v1, Lorg/lasque/tusdk/core/face/FaceAligment;->marks:[Landroid/graphics/PointF;

    if-eqz v2, :cond_3

    iget-object v2, v1, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;

    invoke-direct {v3}, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;-><init>()V

    iget-object v1, v1, Lorg/lasque/tusdk/core/face/FaceAligment;->rect:Landroid/graphics/RectF;

    iput-object v1, v3, Lorg/lasque/tusdk/core/utils/hardware/TuSdkFace;->rect:Landroid/graphics/RectF;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    invoke-super {p0, v2, p2}, Lorg/lasque/tusdk/core/components/camera/TuVideoFocusTouchViewBase;->setCameraFaceDetection(Ljava/util/List;Lorg/lasque/tusdk/core/struct/TuSdkSize;)V

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public setEnableFilterConfig(Z)V
    .locals 0

    return-void
.end method

.method public setGuideLineViewState(Z)V
    .locals 0

    return-void
.end method

.method public setRangeViewFoucsState(Z)V
    .locals 0

    return-void
.end method

.method public showRangeView()V
    .locals 0

    return-void
.end method
