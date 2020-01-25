.class Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;
.super Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;


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

    iput-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-direct {p0}, Lorg/lasque/tusdk/core/view/TuSdkViewHelper$OnSafeClickListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSafeClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->getCancelButton()Lorg/lasque/tusdk/core/view/widget/button/TuSdkImageButton;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->equalViewIds(Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView$2;->a:Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;

    invoke-static {p1}, Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;->a(Lorg/lasque/tusdk/impl/components/widget/sticker/StickerTextItemView;)V

    :cond_0
    return-void
.end method
