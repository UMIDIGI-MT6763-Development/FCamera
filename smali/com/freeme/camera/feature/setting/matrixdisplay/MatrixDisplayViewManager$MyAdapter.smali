.class Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;
.super Landroid/widget/BaseAdapter;
.source "MatrixDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;


# direct methods
.method public constructor <init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)[Landroid/view/Surface;

    move-result-object v0

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "convertView:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Landroid/view/ViewGroup;

    move-result-object p3

    const/4 v0, 0x0

    if-nez p3, :cond_0

    invoke-static {}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$000()Lcom/freeme/camera/common/debug/LogUtil$Tag;

    move-result-object p1

    const-string p2, "mEffectsLayout is null"

    invoke-static {p1, p2}, Lcom/freeme/camera/common/debug/LogHelper;->d(Lcom/freeme/camera/common/debug/LogUtil$Tag;Ljava/lang/String;)V

    return-object v0

    :cond_0
    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1300(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Ljava/lang/String;)I

    move-result p3

    const/16 v1, 0x8

    const/16 v2, 0xc

    if-le p1, v1, :cond_1

    if-ge p1, v2, :cond_1

    if-nez p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    if-lt p1, v2, :cond_2

    add-int/lit8 v1, p1, -0xc

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v2

    invoke-interface {v2, v1, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;->onEffectUpdated(II)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1400(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$EffectUpdateListener;->onEffectUpdated(II)V

    :goto_0
    const/16 p3, 0x10e

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0b0069

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$1;)V

    const v0, 0x7f0901da

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    const v0, 0x7f0900a9

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    const v0, 0x7f090181

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/freeme/camera/common/widget/RotateLayout;

    iput-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mRotateLayout:Lcom/freeme/camera/common/widget/RotateLayout;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v3

    int-to-double v6, v3

    div-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iget-object v2, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v3

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v3, p3, :cond_3

    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1600(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v3

    const/16 v6, 0xb4

    if-ne v3, v6, :cond_4

    :cond_3
    iget-object v3, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v7, v2

    sub-float/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setPivotX(F)V

    iget-object v3, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    sub-float/2addr v6, v7

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setPivotY(F)V

    iget-object v3, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v3, v4}, Landroid/view/TextureView;->setRotation(F)V

    :cond_4
    iget-object v3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    iget v6, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    int-to-float v6, v6

    div-float/2addr v6, v5

    int-to-float v2, v2

    sub-float/2addr v6, v2

    invoke-virtual {v3, v6}, Landroid/view/TextureView;->setPivotX(F)V

    iget-object v3, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    iget v0, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    int-to-float v0, v0

    div-float/2addr v0, v5

    sub-float/2addr v0, v2

    invoke-virtual {v3, v0}, Landroid/view/TextureView;->setPivotY(F)V

    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v0, v4}, Landroid/view/TextureView;->setRotationY(F)V

    :cond_5
    new-instance v0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-direct {v0, v2, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$LomoSurfaceTextureListener;-><init>(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;I)V

    iget-object v2, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {v2, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput p1, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mPosition:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;

    :goto_1
    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1800(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$1900(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    invoke-static {v2}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$700(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;)I

    move-result v2

    invoke-static {p1, v0, v2, p3}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$2000(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/content/Context;II)I

    move-result p1

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mRotateLayout:Lcom/freeme/camera/common/widget/RotateLayout;

    invoke-static {p3, v0, p1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$2100(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Lcom/freeme/camera/common/widget/RotateLayout;I)V

    iget-object p3, p0, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter;->this$0:Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;

    iget-object v0, v1, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager$MyAdapter$ViewHolder;->mRotateLayout:Lcom/freeme/camera/common/widget/RotateLayout;

    const/4 v1, 0x1

    invoke-static {p3, v0, p1, v1}, Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;->access$2200(Lcom/freeme/camera/feature/setting/matrixdisplay/MatrixDisplayViewManager;Landroid/view/View;IZ)V

    return-object p2
.end method
