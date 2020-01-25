.class public final enum Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/TuSdkDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadTaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum TypeBrush:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

.field public static final enum TypeFilter:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

.field public static final enum TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

.field private static final synthetic b:[Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    const-string v1, "TypeFilter"

    const-string v2, "filter"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeFilter:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    const-string v1, "TypeSticker"

    const-string v2, "sticker"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    new-instance v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    const-string v1, "TypeBrush"

    const-string v2, "brush"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeBrush:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeFilter:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeSticker:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->TypeBrush:Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->b:[Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->b:[Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;

    return-object v0
.end method


# virtual methods
.method public getAct()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/lasque/tusdk/core/network/TuSdkDownloadTask$DownloadTaskType;->a:Ljava/lang/String;

    return-object v0
.end method
