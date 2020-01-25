.class public abstract Lmf/org/apache/xerces/dom/CharacterDataImpl;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "CharacterDataImpl.java"


# static fields
.field static final serialVersionUID:J = 0x6e112d3b0d787b76L

.field private static transient singletonNodeList:Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v0, v1, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lmf/org/w3c/dom/DOMException;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v0
.end method

.method public deleteData(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    return-void
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    return-void
.end method

.method internalDeleteData(IIZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_1

    if-ltz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "INDEX_SIZE_ERR"

    invoke-static {p1, p2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, p2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 p3, 0x7

    invoke-direct {p2, p3, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p2

    sub-int/2addr v1, p1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v6, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v1, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    add-int v6, p1, p2

    add-int/2addr v1, v6

    invoke-virtual {v4, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    const-string v1, ""

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    invoke-virtual {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "INDEX_SIZE_ERR"

    invoke-static {p1, p2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    invoke-direct {p2, v2, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method

.method internalInsertData(ILjava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p1, p2, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 p3, 0x7

    invoke-direct {p2, p3, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {v0, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "http://www.w3.org/dom/DOMTR"

    const-string p2, "INDEX_SIZE_ERR"

    invoke-static {p1, p2, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 p3, 0x1

    invoke-direct {p2, p3, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string p3, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p2, p3, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 p3, 0x7

    invoke-direct {p2, p3, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {p0, p1, p2, v2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    invoke-virtual {p0, p1, p3, v2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    iget-object p1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string v0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p2, v0, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p2, v0, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p0, v1, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    add-int/lit8 v1, v0, -0x1

    if-gt p1, v1, :cond_1

    add-int/2addr p2, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    const-string v0, "INDEX_SIZE_ERR"

    invoke-static {p2, v0, p1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lmf/org/w3c/dom/DOMException;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p2
.end method
