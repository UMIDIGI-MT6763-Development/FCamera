.class public Lcom/baidu/aip/exception/AipException;
.super Ljava/lang/Exception;
.source "AipException.java"


# instance fields
.field private errorCode:I

.field private errorMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/baidu/aip/exception/AipException;->errorCode:I

    iput-object p2, p0, Lcom/baidu/aip/exception/AipException;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lcom/baidu/aip/exception/AipException;->errorCode:I

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/baidu/aip/exception/AipException;->errorMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    iget v0, p0, Lcom/baidu/aip/exception/AipException;->errorCode:I

    return v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/exception/AipException;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .locals 0

    iput p1, p0, Lcom/baidu/aip/exception/AipException;->errorCode:I

    return-void
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/baidu/aip/exception/AipException;->errorMsg:Ljava/lang/String;

    return-void
.end method
