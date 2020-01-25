.class public Lcom/baidu/aip/util/AipClientConfiguration;
.super Ljava/lang/Object;
.source "AipClientConfiguration.java"


# instance fields
.field private connectionTimeoutMillis:I

.field private proxy:Ljava/net/Proxy;

.field private socketTimeoutMillis:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/aip/util/AipClientConfiguration;->connectionTimeoutMillis:I

    iput v0, p0, Lcom/baidu/aip/util/AipClientConfiguration;->socketTimeoutMillis:I

    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    iput-object v0, p0, Lcom/baidu/aip/util/AipClientConfiguration;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public constructor <init>(IILjava/net/Proxy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/baidu/aip/util/AipClientConfiguration;->connectionTimeoutMillis:I

    iput p2, p0, Lcom/baidu/aip/util/AipClientConfiguration;->socketTimeoutMillis:I

    iput-object p3, p0, Lcom/baidu/aip/util/AipClientConfiguration;->proxy:Ljava/net/Proxy;

    return-void
.end method


# virtual methods
.method public getConnectionTimeoutMillis()I
    .locals 1

    iget v0, p0, Lcom/baidu/aip/util/AipClientConfiguration;->connectionTimeoutMillis:I

    return v0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/util/AipClientConfiguration;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public getSocketTimeoutMillis()I
    .locals 1

    iget v0, p0, Lcom/baidu/aip/util/AipClientConfiguration;->socketTimeoutMillis:I

    return v0
.end method

.method public setConnectionTimeoutMillis(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/aip/util/AipClientConfiguration;->connectionTimeoutMillis:I

    return-void
.end method

.method public setProxy(Ljava/lang/String;ILjava/net/Proxy$Type;)V
    .locals 1

    new-instance v0, Ljava/net/InetSocketAddress;

    invoke-direct {v0, p1, p2}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    new-instance p1, Ljava/net/Proxy;

    invoke-direct {p1, p3, v0}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    iput-object p1, p0, Lcom/baidu/aip/util/AipClientConfiguration;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public setProxy(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/util/AipClientConfiguration;->proxy:Ljava/net/Proxy;

    return-void
.end method

.method public setSocketTimeoutMillis(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/aip/util/AipClientConfiguration;->socketTimeoutMillis:I

    return-void
.end method
