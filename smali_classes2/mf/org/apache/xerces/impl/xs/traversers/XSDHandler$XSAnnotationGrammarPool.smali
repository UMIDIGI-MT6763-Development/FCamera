.class Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;
.super Ljava/lang/Object;
.source "XSDHandler.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/grammars/XMLGrammarPool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XSAnnotationGrammarPool"
.end annotation


# instance fields
.field private fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

.field private fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheGrammars(Ljava/lang/String;[Lmf/org/apache/xerces/xni/grammars/Grammar;)V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public lockPool()V
    .locals 0

    return-void
.end method

.method public refreshGrammars(Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 p1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-void
.end method

.method public retrieveGrammar(Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;)Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 2

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;->getGrammarType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    if-ne v0, v1, :cond_1

    check-cast p1, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/grammars/XMLSchemaDescription;->getTargetNamespace()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammar(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public retrieveInitialGrammarSet(Ljava/lang/String;)[Lmf/org/apache/xerces/xni/grammars/Grammar;
    .locals 5

    const-string v0, "http://www.w3.org/2001/XMLSchema"

    const/4 v1, 0x0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    if-nez p1, :cond_3

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fGrammarBucket:Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;

    const/4 v0, 0x1

    if-nez p1, :cond_0

    new-array p1, v0, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    aput-object v0, p1, v1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/XSGrammarBucket;->getGrammars()[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object p1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-lt v2, v3, :cond_1

    array-length v2, p1

    add-int/2addr v2, v0

    new-array v2, v2, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, v2

    sub-int/2addr p1, v0

    sget-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    aput-object v0, v2, p1

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    goto :goto_1

    :cond_1
    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    aget-object v4, p1, v2

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xs/traversers/XSDHandler$XSAnnotationGrammarPool;->fInitialGrammarSet:[Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object p1

    :cond_4
    new-array p1, v1, [Lmf/org/apache/xerces/xni/grammars/Grammar;

    return-object p1
.end method

.method public unlockPool()V
    .locals 0

    return-void
.end method
