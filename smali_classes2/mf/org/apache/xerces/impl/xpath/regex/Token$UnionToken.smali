.class Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnionToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23a65df5641dc4c5L


# instance fields
.field children:Ljava/util/Vector;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    return-void
.end method


# virtual methods
.method addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_2
    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v1

    if-lt v0, v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {p1, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    sub-int/2addr v0, v2

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v3, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v4, 0xa

    if-eqz v3, :cond_6

    iget v3, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v3, v4, :cond_7

    :cond_6
    iget v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v3, :cond_8

    iget v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v3, v4, :cond_8

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_8
    iget v3, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v3, :cond_9

    move v3, v1

    goto :goto_1

    :cond_9
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    :goto_1
    iget v4, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/high16 v5, 0x10000

    if-nez v4, :cond_b

    new-instance v4, Ljava/lang/StringBuffer;

    add-int/2addr v3, v1

    invoke-direct {v4, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    if-lt v1, v5, :cond_a

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_a
    int-to-char v1, v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    const/4 v1, 0x0

    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1, v2, v0}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_3

    :cond_b
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v3

    invoke-direct {v4, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget v0, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v0, :cond_d

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result p1

    if-lt p1, v5, :cond_c

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_c
    int-to-char p1, p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_d
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    check-cast v2, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object p1, v2, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    return-void
.end method

.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object p1
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 5

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v3

    if-ne v3, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "+"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget v3, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v2

    if-ne v2, v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "+?"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v2, v1, :cond_3

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    :goto_1
    return-object p1

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v4, 0x7

    if-ne v0, v1, :cond_5

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v0, v4, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ne v0, v1, :cond_6

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v0, v4, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "??"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v3, v1, :cond_7

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    :goto_3
    return-object p1

    :cond_7
    const/16 v1, 0x7c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method
