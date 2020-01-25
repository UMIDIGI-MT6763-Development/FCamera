.class Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->addTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

.field final synthetic b:I

.field final synthetic c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;


# direct methods
.method constructor <init>(Lorg/lasque/tusdk/core/seles/sources/SelesOutput;Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V
    .locals 0

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iput-object p2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iput p3, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    iget v2, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->b:I

    invoke-virtual {v0, v1, v2}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->setInputFramebufferForTarget(Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;I)V

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargets:Ljava/util/List;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-object v0, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mTargetTextureIndices:Ljava/util/List;

    iget v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->c:Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

    iget-boolean v1, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mAllTargetsWantMonochromeData:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput$1;->a:Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;

    invoke-interface {v1}, Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;->wantsMonochromeInput()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;->mAllTargetsWantMonochromeData:Z

    return-void
.end method
