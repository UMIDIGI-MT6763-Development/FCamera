.class public Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;
.super Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;
.source "XSGrammarPool.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public toXSModel()Lmf/org/apache/xerces/xs/XSModel;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel(S)Lmf/org/apache/xerces/xs/XSModel;

    move-result-object v0

    return-object v0
.end method

.method public toXSModel(S)Lmf/org/apache/xerces/xs/XSModel;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    array-length v3, v3

    if-lt v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_0

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)Lmf/org/apache/xerces/xs/XSModel;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v1, v2, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->toXSModel([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)Lmf/org/apache/xerces/xs/XSModel;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/util/XSGrammarPool;->fGrammars:[Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    aget-object v3, v3, v2

    :goto_1
    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, v3, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->desc:Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, v3, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->grammar:Lmf/org/apache/xerces/xni/grammars/Grammar;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v3, v3, Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;->next:Lmf/org/apache/xerces/util/XMLGrammarPoolImpl$Entry;

    goto :goto_1
.end method

.method protected toXSModel([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)Lmf/org/apache/xerces/xs/XSModel;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;

    invoke-direct {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)V

    return-object v0
.end method
