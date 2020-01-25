.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;
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
    name = "ConcatToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x78fa25a6724b344dL


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    :goto_0
    return-object p1
.end method

.method size()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "+"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v0, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "+?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConcatToken;->child2:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method
