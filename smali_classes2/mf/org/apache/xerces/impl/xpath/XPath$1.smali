.class Lmf/org/apache/xerces/impl/xpath/XPath$1;
.super Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;
.source "XPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;->parseExpression(Lmf/org/apache/xerces/xni/NamespaceContext;)[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/xpath/XPath;


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath;Lmf/org/apache/xerces/util/SymbolTable;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$1;->this$0:Lmf/org/apache/xerces/impl/xpath/XPath;

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;-><init>(Lmf/org/apache/xerces/util/SymbolTable;)V

    return-void
.end method


# virtual methods
.method protected addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/16 v0, 0xb

    if-eq p2, v0, :cond_1

    const/16 v0, 0x15

    if-eq p2, v0, :cond_1

    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/16 v0, 0x9

    if-eq p2, v0, :cond_1

    const/16 v0, 0xa

    if-eq p2, v0, :cond_1

    const/16 v0, 0x16

    if-eq p2, v0, :cond_1

    const/16 v0, 0x17

    if-eq p2, v0, :cond_1

    const/16 v0, 0x24

    if-eq p2, v0, :cond_1

    const/16 v0, 0x23

    if-eq p2, v0, :cond_1

    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string p2, "c-general-xpath"

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPath$Scanner;->addToken(Lmf/org/apache/xerces/impl/xpath/XPath$Tokens;I)V

    return-void
.end method
