.class Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v3, v3, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mTargets:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v4, v4, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v3, v1}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setCurrentlyReceivingMonochromeInput(Z)V

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-static {v5}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->a(Lorg/lasque/tusdk/core/seles/sources/SelesPicture;)Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->getScaleSize()Lorg/lasque/tusdk/core/struct/TuSdkSize;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget-object v5, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    invoke-virtual {v5}, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->framebufferForOutput()Lorg/lasque/tusdk/core/seles/SelesFramebuffer;

    move-result-object v5

    invoke-interface {v3, v5, v4}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputFramebuffer(Lorg/lasque/tusdk/core/seles/SelesFramebuffer;I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mTargets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mTargets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->b:Lorg/lasque/tusdk/core/seles/sources/SelesPicture;

    iget-object v3, v3, Lorg/lasque/tusdk/core/seles/sources/SelesPicture;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-wide/16 v4, 0x0

    invoke-interface {v2, v4, v5, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->newFrameReady(JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesPicture$3;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method
