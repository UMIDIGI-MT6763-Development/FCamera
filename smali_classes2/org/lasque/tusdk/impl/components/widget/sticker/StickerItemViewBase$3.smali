.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-virtual {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->locationInWindow(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    iget-object v2, v2, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    const/16 v3, 0x64

    if-le v2, v3, :cond_1

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    iget-object v1, v1, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->mParentFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, p1

    int-to-float v1, v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr p2, v1

    invoke-virtual {p1, v2, v3, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->handleTurnAndScaleActionMove(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$3;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    add-float/2addr p2, v1

    invoke-virtual {p1, v2, v3, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->handleTurnAndScaleActionStart(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V

    :goto_0
    return v0
.end method
