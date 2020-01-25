.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;
.super Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;


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

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchBegin(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {p1, p3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onTouchEnd(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {p1, p3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->b(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onTouchMultipleMoveForStablization(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {v0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V

    return-void
.end method

.method public onTouchSingleMove(Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/View;Landroid/view/MotionEvent;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer$StepData;)V
    .locals 0

    iget-object p2, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;

    invoke-static {p2, p1, p3}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerItemViewBase;Lorg/lasque/tusdk/core/utils/TuSdkGestureRecognizer;Landroid/view/MotionEvent;)V

    return-void
.end method
