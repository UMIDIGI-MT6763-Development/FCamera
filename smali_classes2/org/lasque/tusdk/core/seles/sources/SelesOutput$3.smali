.class Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->removeAllTargets()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesOutput;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v3, v3, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v4}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    invoke-interface {v2, v4, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    sget-object v4, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {v2, v4, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$3;->a:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mAllTargetsWantMonochromeData:Z

    return-void
.end method
