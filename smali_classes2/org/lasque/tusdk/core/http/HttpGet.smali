.class public Lorg/lasque/tusdk/core/http/HttpGet;
.super Lorg/lasque/tusdk/core/http/HttpUriRequest;


# static fields
.field public static final METHOD_NAME:Ljava/lang/String; = "GET"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/lasque/tusdk/core/http/HttpUriRequest;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/lasque/tusdk/core/http/HttpUriRequest;-><init>(Ljava/net/URL;)V

    return-void
.end method


# virtual methods
.method public canOutput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public canUseCache()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method
