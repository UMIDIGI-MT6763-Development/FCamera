.class public Lorg/lasque/tusdk/core/seles/tusdk/filters/TuSDKNormalFilter;
.super Lorg/lasque/tusdk/core/seles/filters/SelesFilter;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;-><init>()V

    return-void
.end method


# virtual methods
.method protected onInitOnGLThread()V
    .locals 1

    invoke-super {p0}, Lorg/lasque/tusdk/core/seles/filters/SelesFilter;->onInitOnGLThread()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/tusdk/filters/TuSDKNormalFilter;->setEnableLiveSticker(Z)V

    return-void
.end method
