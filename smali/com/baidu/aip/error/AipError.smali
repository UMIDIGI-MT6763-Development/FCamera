.class public final enum Lcom/baidu/aip/error/AipError;
.super Ljava/lang/Enum;
.source "AipError.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/baidu/aip/error/AipError;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/baidu/aip/error/AipError;

.field public static final enum ASYNC_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum DOWNLOAD_FILE_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum GROUP_ID_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum GROUP_ID_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum ILLEGAL_REQUEST_ID_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum IMAGE_LENGTH_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum IMAGE_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum NET_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum SUCCESS:Lcom/baidu/aip/error/AipError;

.field public static final enum UID_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum UID_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum UNSUPPORTED_IMAGE_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

.field public static final enum USER_INFO_SIZE_ERROR:Lcom/baidu/aip/error/AipError;


# instance fields
.field private final errorCode:Ljava/lang/String;

.field private final errorMsg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "SUCCESS"

    const-string v2, "0"

    const-string v3, "Success"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->SUCCESS:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "IMAGE_SIZE_ERROR"

    const-string v2, "SDK100"

    const-string v3, "image size error"

    const/4 v5, 0x1

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->IMAGE_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "IMAGE_LENGTH_ERROR"

    const-string v2, "SDK101"

    const-string v3, "image length error"

    const/4 v6, 0x2

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->IMAGE_LENGTH_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "IMAGE_READ_ERROR"

    const-string v2, "SDK102"

    const-string v3, "read image file error"

    const/4 v7, 0x3

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "USER_INFO_SIZE_ERROR"

    const-string v2, "SDK103"

    const-string v3, "user_info size error"

    const/4 v8, 0x4

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->USER_INFO_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "GROUP_ID_FORMAT_ERROR"

    const-string v2, "SDK104"

    const-string v3, "group_id format error"

    const/4 v9, 0x5

    invoke-direct {v0, v1, v9, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->GROUP_ID_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "GROUP_ID_SIZE_ERROR"

    const-string v2, "SDK105"

    const-string v3, "group_id size error"

    const/4 v10, 0x6

    invoke-direct {v0, v1, v10, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->GROUP_ID_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "UID_FORMAT_ERROR"

    const-string v2, "SDK106"

    const-string v3, "uid format error"

    const/4 v11, 0x7

    invoke-direct {v0, v1, v11, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->UID_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "UID_SIZE_ERROR"

    const-string v2, "SDK107"

    const-string v3, "uid size error"

    const/16 v12, 0x8

    invoke-direct {v0, v1, v12, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->UID_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "NET_TIMEOUT_ERROR"

    const-string v2, "SDK108"

    const-string v3, "connection or read data time out"

    const/16 v13, 0x9

    invoke-direct {v0, v1, v13, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->NET_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "UNSUPPORTED_IMAGE_FORMAT_ERROR"

    const-string v2, "SDK109"

    const-string v3, "unsupported image format"

    const/16 v14, 0xa

    invoke-direct {v0, v1, v14, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->UNSUPPORTED_IMAGE_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "ILLEGAL_REQUEST_ID_ERROR"

    const-string v2, "SDK110"

    const-string v3, "illegal request id found: "

    const/16 v15, 0xb

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->ILLEGAL_REQUEST_ID_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "ASYNC_TIMEOUT_ERROR"

    const-string v2, "SDK111"

    const-string v3, "wait for aysnc result timeout"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->ASYNC_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

    new-instance v0, Lcom/baidu/aip/error/AipError;

    const-string v1, "DOWNLOAD_FILE_ERROR"

    const-string v2, "SDK112"

    const-string v3, "download file failed"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2, v3}, Lcom/baidu/aip/error/AipError;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/baidu/aip/error/AipError;->DOWNLOAD_FILE_ERROR:Lcom/baidu/aip/error/AipError;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/baidu/aip/error/AipError;

    sget-object v1, Lcom/baidu/aip/error/AipError;->SUCCESS:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v4

    sget-object v1, Lcom/baidu/aip/error/AipError;->IMAGE_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v5

    sget-object v1, Lcom/baidu/aip/error/AipError;->IMAGE_LENGTH_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v6

    sget-object v1, Lcom/baidu/aip/error/AipError;->IMAGE_READ_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v7

    sget-object v1, Lcom/baidu/aip/error/AipError;->USER_INFO_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v8

    sget-object v1, Lcom/baidu/aip/error/AipError;->GROUP_ID_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v9

    sget-object v1, Lcom/baidu/aip/error/AipError;->GROUP_ID_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v10

    sget-object v1, Lcom/baidu/aip/error/AipError;->UID_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v11

    sget-object v1, Lcom/baidu/aip/error/AipError;->UID_SIZE_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v12

    sget-object v1, Lcom/baidu/aip/error/AipError;->NET_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v13

    sget-object v1, Lcom/baidu/aip/error/AipError;->UNSUPPORTED_IMAGE_FORMAT_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v14

    sget-object v1, Lcom/baidu/aip/error/AipError;->ILLEGAL_REQUEST_ID_ERROR:Lcom/baidu/aip/error/AipError;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/aip/error/AipError;->ASYNC_TIMEOUT_ERROR:Lcom/baidu/aip/error/AipError;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/baidu/aip/error/AipError;->DOWNLOAD_FILE_ERROR:Lcom/baidu/aip/error/AipError;

    aput-object v1, v0, v15

    sput-object v0, Lcom/baidu/aip/error/AipError;->$VALUES:[Lcom/baidu/aip/error/AipError;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/baidu/aip/error/AipError;->errorCode:Ljava/lang/String;

    iput-object p4, p0, Lcom/baidu/aip/error/AipError;->errorMsg:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/baidu/aip/error/AipError;
    .locals 1

    const-class v0, Lcom/baidu/aip/error/AipError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/baidu/aip/error/AipError;

    return-object p0
.end method

.method public static values()[Lcom/baidu/aip/error/AipError;
    .locals 1

    sget-object v0, Lcom/baidu/aip/error/AipError;->$VALUES:[Lcom/baidu/aip/error/AipError;

    invoke-virtual {v0}, [Lcom/baidu/aip/error/AipError;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/baidu/aip/error/AipError;

    return-object v0
.end method


# virtual methods
.method public getErrorCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/error/AipError;->errorCode:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/baidu/aip/error/AipError;->errorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonResult()Lorg/json/JSONObject;
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error_code"

    iget-object v2, p0, Lcom/baidu/aip/error/AipError;->errorCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "error_msg"

    iget-object v2, p0, Lcom/baidu/aip/error/AipError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/baidu/aip/error/AipError;->toJsonResult()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
