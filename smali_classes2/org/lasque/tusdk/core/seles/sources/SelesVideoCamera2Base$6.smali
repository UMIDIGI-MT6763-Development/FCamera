.class Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v0}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->g(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    invoke-static {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->g(Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;)Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;

    move-result-object v1

    invoke-interface {v1}, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Engine;->previewOrientation()Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    move-result-object v1

    :goto_0
    iput-object v1, v0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    iget-object v1, v1, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    iget-object v2, v2, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mTargets:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iget-object v3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    iget-object v3, v3, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mTargetTextureIndices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base$6;->a:Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;

    iget-object v4, v4, Lorg/lasque/tusdk/core/seles/sources/SelesVideoCamera2Base;->mOutputRotation:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    invoke-interface {v2, v4, v3}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
