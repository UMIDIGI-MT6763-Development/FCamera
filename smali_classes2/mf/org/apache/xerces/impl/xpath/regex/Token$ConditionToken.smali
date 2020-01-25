.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;
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
    name = "ConditionToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3c6bae73f94a736bL


# instance fields
.field final condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final refNumber:I

.field final yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 1

    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Internal Error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 1

    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    if-lez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(?("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->refNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget p1, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v0, 0x8

    if-ne p1, v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(?("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "(?"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->condition:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->yes:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "|"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ConditionToken;->no:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method
