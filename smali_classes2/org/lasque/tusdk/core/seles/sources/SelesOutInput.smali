.class public abstract Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;
.super Lorg/lasque/tusdk/core/seles/sources/SelesOutput;

# interfaces
.implements Lorg/lasque/tusdk/core/seles/SelesContext$SelesInput;


# instance fields
.field private a:Lorg/lasque/tusdk/core/seles/SelesParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutput;-><init>()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a:Lorg/lasque/tusdk/core/seles/SelesParameters;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a:Lorg/lasque/tusdk/core/seles/SelesParameters;

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a:Lorg/lasque/tusdk/core/seles/SelesParameters;

    return-object v0
.end method

.method protected initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;
    .locals 0

    if-nez p1, :cond_0

    new-instance p1, Lorg/lasque/tusdk/core/seles/SelesParameters;

    invoke-direct {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;-><init>()V

    :cond_0
    return-object p1
.end method

.method public mountAtGLThread(Ljava/lang/Runnable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->runOnDraw(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setParameter(Lorg/lasque/tusdk/core/seles/SelesParameters;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->isInited()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->initParams(Lorg/lasque/tusdk/core/seles/SelesParameters;)Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a:Lorg/lasque/tusdk/core/seles/SelesParameters;

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a:Lorg/lasque/tusdk/core/seles/SelesParameters;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method protected submitFilterArg(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)V
    .locals 0

    return-void
.end method

.method public submitParameter()V
    .locals 1

    invoke-virtual {p0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->getParameter()Lorg/lasque/tusdk/core/seles/SelesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters;->changedArgs()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/lasque/tusdk/core/seles/sources/SelesOutInput;->a(Ljava/util/List;)V

    return-void
.end method
