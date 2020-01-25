.class Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->removeTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesOutput;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;II)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->d:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iput p3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->b:I

    iput p4, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    new-instance v1, Lorg/lasque/tusdk/core/struct/TuSdkSize;

    invoke-direct {v1}, Lorg/lasque/tusdk/core/struct/TuSdkSize;-><init>()V

    iget v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->b:I

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputSize(Lorg/lasque/tusdk/core/struct/TuSdkSize;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    sget-object v1, Lorg/lasque/tusdk/core/utils/image/ImageOrientation;->Up:Lorg/lasque/tusdk/core/utils/image/ImageOrientation;

    iget v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->b:I

    invoke-interface {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->setInputRotation(Lorg/lasque/tusdk/core/utils/image/ImageOrientation;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->d:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->d:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$2;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v0}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->endProcessing()V

    return-void
.end method
