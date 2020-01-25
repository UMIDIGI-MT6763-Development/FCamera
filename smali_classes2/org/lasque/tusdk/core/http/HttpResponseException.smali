.class public Lorg/lasque/tusdk/core/http/HttpResponseException;
.super Ljava/io/IOException;


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p1, p0, Lorg/lasque/tusdk/core/http/HttpResponseException;->a:I

    return-void
.end method


# virtual methods
.method public getStateCode()I
    .locals 1

    iget v0, p0, Lorg/lasque/tusdk/core/http/HttpResponseException;->a:I

    return v0
.end method
