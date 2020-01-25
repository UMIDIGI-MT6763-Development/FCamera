.class public Lmf/javax/xml/transform/stax/StAXResult;
.super Ljava/lang/Object;
.source "StAXResult.java"

# interfaces
.implements Lmf/javax/xml/transform/Result;


# static fields
.field public static final FEATURE:Ljava/lang/String; = "http://javax.xml.transform.stax.StAXResult/feature"


# instance fields
.field private systemId:Ljava/lang/String;

.field private xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

.field private xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Lmf/javax/xml/stream/XMLEventWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->systemId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StAXResult(XMLEventWriter) with XMLEventWriter == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lmf/javax/xml/stream/XMLStreamWriter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    iput-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->systemId:Ljava/lang/String;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "StAXResult(XMLStreamWriter) with XMLStreamWriter == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getXMLEventWriter()Lmf/javax/xml/stream/XMLEventWriter;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlEventWriter:Lmf/javax/xml/stream/XMLEventWriter;

    return-object v0
.end method

.method public getXMLStreamWriter()Lmf/javax/xml/stream/XMLStreamWriter;
    .locals 1

    iget-object v0, p0, Lmf/javax/xml/transform/stax/StAXResult;->xmlStreamWriter:Lmf/javax/xml/stream/XMLStreamWriter;

    return-object v0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "StAXResult#setSystemId(systemId) cannot set the system identifier for a StAXResult"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
