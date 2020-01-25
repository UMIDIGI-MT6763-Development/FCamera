.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {p1, v1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->handleResizeActionMove(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p1, v1, v2, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->handleTurnAndScaleActionStart(Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;FF)V

    :goto_0
    return v0
.end method
