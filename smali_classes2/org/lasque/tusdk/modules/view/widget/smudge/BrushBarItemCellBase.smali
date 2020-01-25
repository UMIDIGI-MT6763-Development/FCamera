.class public abstract Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;
.super Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;

# interfaces
.implements Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase$BrushTableItemCellDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout<",
        "Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;",
        ">;",
        "Lorg/lasque/tusdk/core/view/listview/TuSdkListSelectableCellViewInterface;"
    }
.end annotation


# instance fields
.field private a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase$BrushTableItemCellDelegate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected bindModel()V
    .locals 3

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getModel()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->code:Ljava/lang/String;

    const-string v2, "Eraser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->handleTypeEraser(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;->getType()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    move-result-object v1

    sget-object v2, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;->TypeOnline:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData$BrushType;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->handleTypeOnline(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->handleTypeBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    :goto_0
    return-void
.end method

.method public canHiddenRemoveFlag()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDelegate()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase$BrushTableItemCellDelegate;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->a:Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase$BrushTableItemCellDelegate;

    return-object v0
.end method

.method public abstract getImageView()Landroid/widget/ImageView;
.end method

.method protected handleBlockView(II)V
    .locals 0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object p1

    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method

.method protected handleTypeBrush(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->loadThumbWithBrush(Landroid/widget/ImageView;Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected handleTypeEraser(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 0

    return-void
.end method

.method protected handleTypeOnline(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushData;)V
    .locals 0

    return-void
.end method

.method public onCellDeselected()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->setSelected(Z)V

    return-void
.end method

.method public onCellSelected(I)V
    .locals 0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->setSelected(Z)V

    return-void
.end method

.method public viewNeedRest()V
    .locals 2

    invoke-super {p0}, Lorg/lasque/tusdk/core/view/listview/TuSdkCellRelativeLayout;->viewNeedRest()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->setSelected(Z)V

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->shared()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushBarItemCellBase;->getImageView()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/modules/view/widget/smudge/BrushLocalPackage;->cancelLoadImage(Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
