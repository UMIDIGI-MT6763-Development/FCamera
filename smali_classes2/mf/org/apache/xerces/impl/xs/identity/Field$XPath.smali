.class public Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;
.super Lmf/org/apache/xerces/impl/xpath/XPath;
.source "Field.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/identity/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XPath"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/XPathException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fixupXPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/XPath;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolTable;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/4 p1, 0x0

    move p2, p1

    :goto_0
    iget-object p3, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    array-length p3, p3

    if-lt p2, p3, :cond_0

    return-void

    :cond_0
    move p3, p1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v0, v0

    if-lt p3, v0, :cond_1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aget-object v0, v0, p3

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fLocationPaths:[Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    if-lt p3, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p1, Lmf/org/apache/xerces/impl/xpath/XPathException;

    const-string p2, "c-fields-xpaths"

    invoke-direct {p1, p2}, Lmf/org/apache/xerces/impl/xpath/XPathException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_1
.end method

.method private static fixupXPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-lt v3, v0, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7c

    if-eqz v4, :cond_3

    invoke-static {v5}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v7

    if-nez v7, :cond_4

    const/16 v7, 0x2e

    if-eq v5, v7, :cond_2

    const/16 v7, 0x2f

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    if-eq v5, v6, :cond_4

    invoke-static {p0, v3, v0}, Lmf/org/apache/xerces/impl/xs/identity/Field$XPath;->fixupXPath2(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    move v4, v1

    goto :goto_2

    :cond_3
    if-ne v5, v6, :cond_4

    move v4, v2

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static fixupXPath2(Ljava/lang/String;II)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v1, p2, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_5

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_1
    if-lt p1, p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x7c

    if-eqz v2, :cond_3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_2

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_1

    goto :goto_2

    :cond_1
    if-eq v3, v4, :cond_4

    const-string v2, "./"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    goto :goto_3

    :cond_2
    :goto_2
    move v2, v1

    goto :goto_3

    :cond_3
    if-ne v3, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
