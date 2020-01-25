.class public final Lmf/org/apache/xerces/util/HTTPInputSource;
.super Lmf/org/apache/xerces/xni/parser/XMLInputSource;
.source "HTTPInputSource.java"


# instance fields
.field protected fFollowRedirects:Z

.field protected fHTTPRequestProperties:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;-><init>(Lmf/org/apache/xerces/xni/XMLResourceIdentifier;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getFollowHTTPRedirects()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    return v0
.end method

.method public getHTTPRequestProperties()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getHTTPRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public setFollowHTTPRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fFollowRedirects:Z

    return-void
.end method

.method public setHTTPRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lmf/org/apache/xerces/util/HTTPInputSource;->fHTTPRequestProperties:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method
