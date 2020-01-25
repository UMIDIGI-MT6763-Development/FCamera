.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;
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
    name = "ClosureToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x122a670924c7e68cL


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field max:I

.field min:I


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->setMin(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->setMax(I)V

    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object p1
.end method

.method final getMax()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->max:I

    return v0
.end method

.method final getMin()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->min:I

    return v0
.end method

.method final setMax(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->max:I

    return-void
.end method

.method final setMin(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->min:I

    return-void
.end method

.method size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "*"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-ltz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Token#toString(): CLOSURE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-gez v0, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "*?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-ltz v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "}?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v0

    if-ltz v0, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v0

    if-gez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "{"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",}?"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Token#toString(): NONGREEDYCLOSURE "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMin()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/Token$ClosureToken;->getMax()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
