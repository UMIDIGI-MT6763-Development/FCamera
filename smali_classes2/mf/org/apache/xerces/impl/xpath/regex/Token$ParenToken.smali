.class Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;
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
    name = "ParenToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x526810ed3e634cf8L


# instance fields
.field final child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

.field final parennumber:I


# direct methods
.method constructor <init>(ILmf/org/apache/xerces/impl/xpath/regex/Token;I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iput p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return-void
.end method


# virtual methods
.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 0

    iget-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object p1
.end method

.method getParenNumber()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    return v0
.end method

.method size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->type:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    goto/16 :goto_0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?>"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?<!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?<="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?!"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->parennumber:I

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(?:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$ParenToken;->child:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
