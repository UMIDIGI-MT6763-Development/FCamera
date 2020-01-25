.class public Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;
.super Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    invoke-virtual {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->getFilterWrap()Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->wipeFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    if-nez v0, :cond_1

    new-instance v0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    invoke-direct {v0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->mSmudgeProcessor:Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    return-object v0
.end method

.method public final setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeProcessor;->setFilterWrap(Lorg/lasque/tusdk/core/seles/tusdk/FilterWrap;)V

    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/secret/SdkValid;->shared:Lorg/lasque/tusdk/core/secret/SdkValid;

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/secret/SdkValid;->wipeFilterEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "You are not allowed to use the wipe-filter feature, please see http://tusdk.com"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/lasque/tusdk/core/utils/TLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SmudgeView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected updateBrushSettings()V
    .locals 2

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getProcessorInstance()Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;

    move-result-object v0

    invoke-virtual {p0}, Lorg/lasque/tusdk/impl/components/widget/smudge/FilterSmudgeView;->getBrushSize()Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/lasque/tusdk/impl/components/widget/smudge/SimpleProcessor;->setBrushSize(Lorg/lasque/tusdk/modules/view/widget/smudge/BrushSize$SizeType;)V

    return-void
.end method
