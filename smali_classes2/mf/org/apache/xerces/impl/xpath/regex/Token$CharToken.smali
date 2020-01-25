.class Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;
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
    name = "CharToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3cfb97d8347ea91dL


# instance fields
.field final chardata:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput p2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    return-void
.end method


# virtual methods
.method getChar()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    return v0
.end method

.method match(I)Z
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->type:I

    if-nez v0, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NFAArrow#match(): Internal error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString(I)Ljava/lang/String;
    .locals 3

    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->type:I

    if-eqz p1, :cond_3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto/16 :goto_1

    :cond_0
    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_linebeginning:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-eq p0, p1, :cond_2

    sget-object p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_lineend:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\\"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    :cond_2
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    iget p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    sparse-switch p1, :sswitch_data_0

    const/high16 v0, 0x10000

    if-lt p1, v0, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "0"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\\v"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :sswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\\"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :sswitch_1
    const-string p1, "\\e"

    goto :goto_1

    :sswitch_2
    const-string p1, "\\r"

    goto :goto_1

    :sswitch_3
    const-string p1, "\\f"

    goto :goto_1

    :sswitch_4
    const-string p1, "\\n"

    goto :goto_1

    :sswitch_5
    const-string p1, "\\t"

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$CharToken;->chardata:I

    int-to-char v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_5
        0xa -> :sswitch_4
        0xc -> :sswitch_3
        0xd -> :sswitch_2
        0x1b -> :sswitch_1
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x2e -> :sswitch_0
        0x3f -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x7b -> :sswitch_0
        0x7c -> :sswitch_0
    .end sparse-switch
.end method
