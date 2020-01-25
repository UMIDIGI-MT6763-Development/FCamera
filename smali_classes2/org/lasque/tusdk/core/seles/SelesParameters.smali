.class public Lorg/lasque/tusdk/core/seles/SelesParameters;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;,
        Lorg/lasque/tusdk/core/seles/SelesParameters$FilterStickerInterface;,
        Lorg/lasque/tusdk/core/seles/SelesParameters$FilterFacePositionInterface;,
        Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface;,
        Lorg/lasque/tusdk/core/seles/SelesParameters$FilterTexturesInterface2;,
        Lorg/lasque/tusdk/core/seles/SelesParameters$FilterParameterInterface;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    iput-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public appendFloatArg(Ljava/lang/String;F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->appendFloatArg(Ljava/lang/String;FFF)V

    return-void
.end method

.method public appendFloatArg(Ljava/lang/String;FFF)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->c:Z

    new-instance v0, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-direct {v0, p0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;-><init>(Lorg/lasque/tusdk/core/seles/SelesParameters;)V

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->b(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F

    move-result p2

    invoke-static {v0, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F

    invoke-static {v0, p3}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->c(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F

    invoke-static {v0, p4}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->d(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->b:Ljava/util/Map;

    if-eqz p2, :cond_1

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->b:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p2, p2, p1

    if-gtz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpg-float p2, p1, p2

    if-gtz p2, :cond_1

    invoke-virtual {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;Z)Z

    invoke-virtual {v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getValue()F

    move-result p1

    invoke-static {v0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;F)F

    :cond_1
    iget-object p1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changedArgs()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-static {v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->a(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;Z)Z

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    instance-of v1, p1, Lorg/lasque/tusdk/core/seles/SelesParameters;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    check-cast p1, Lorg/lasque/tusdk/core/seles/SelesParameters;

    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getArgs()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-static {v3}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->b(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-static {v4}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->b(Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    return v0
.end method

.method public getArgKeys()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    return-object v0
.end method

.method public getDefaultArg(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->parseFloat(Ljava/lang/String;)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;
    .locals 4

    invoke-static {p1}, Lorg/lasque/tusdk/core/utils/StringHelper;->isBlank(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-virtual {v2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v1
.end method

.method public isInited()Z
    .locals 1

    iget-boolean v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->c:Z

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    invoke-virtual {v1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->reset()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reset(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->reset()V

    return-void
.end method

.method public setFilterArg(Ljava/lang/String;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/seles/SelesParameters;->a:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public stepFilterArg(Ljava/lang/String;F)V
    .locals 1

    invoke-virtual {p0, p1}, Lorg/lasque/tusdk/core/seles/SelesParameters;->getFilterArg(Ljava/lang/String;)Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->getPrecentValue()F

    move-result v0

    add-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lorg/lasque/tusdk/core/seles/SelesParameters$FilterArg;->setPrecentValue(F)V

    return-void
.end method
