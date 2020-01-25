.class public Lmf/org/apache/xerces/impl/xs/opti/TextImpl;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultText;
.source "TextImpl.java"


# instance fields
.field fCol:I

.field fData:Ljava/lang/String;

.field fRow:I

.field fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;


# direct methods
.method public constructor <init>(Ljava/lang/StringBuffer;Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;II)V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultText;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iput p3, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    iput p4, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->uri:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->localpart:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->prefix:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->rawname:Ljava/lang/String;

    const/4 p1, 0x3

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->nodeType:S

    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getNextSibling()Lmf/org/w3c/dom/Node;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public getParentNode()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getPreviousSibling()Lmf/org/w3c/dom/Node;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fSchemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fRow:I

    aget-object v0, v0, v2

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fCol:I

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    return-object v0
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p1, v0, :cond_2

    add-int/2addr p2, p1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p2, v0, :cond_1

    iget-object p2, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/TextImpl;->fData:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Lmf/org/w3c/dom/DOMException;

    const/4 p2, 0x1

    const-string v0, "parameter error"

    invoke-direct {p1, p2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method
