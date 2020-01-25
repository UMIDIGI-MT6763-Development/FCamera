.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->initView()V
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

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper;->removeGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Z)Z

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->c(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;->setMultipleStablization(Z)V

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$1;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->d(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;)V

    :cond_0
    return-void
.end method
