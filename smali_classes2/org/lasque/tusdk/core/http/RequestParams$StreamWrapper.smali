.class public Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/http/RequestParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StreamWrapper"
.end annotation


# instance fields
.field public final autoClose:Z

.field public final contentType:Ljava/lang/String;

.field public final inputStream:Ljava/io/InputStream;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->inputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->name:Ljava/lang/String;

    iput-object p3, p0, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->contentType:Ljava/lang/String;

    iput-boolean p4, p0, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;->autoClose:Z

    return-void
.end method

.method static a(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;
    .locals 1

    new-instance v0, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;

    if-nez p2, :cond_0

    const-string p2, "application/octet-stream"

    :cond_0
    invoke-direct {v0, p0, p1, p2, p3}, Lorg/lasque/tusdk/core/http/RequestParams$StreamWrapper;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v0
.end method
