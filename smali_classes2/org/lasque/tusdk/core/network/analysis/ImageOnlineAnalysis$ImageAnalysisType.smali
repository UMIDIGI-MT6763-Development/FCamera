.class public final enum Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageAnalysisType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum NoAccessRight:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

.field public static final enum NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

.field public static final enum ServiceFailed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

.field public static final enum Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

.field public static final enum Unknow:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

.field private static final synthetic a:[Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const-string v1, "Unknow"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Unknow:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const-string v1, "Succeed"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const-string v1, "NotInputImage"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const-string v1, "ServiceFailed"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->ServiceFailed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    new-instance v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const-string v1, "NoAccessRight"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NoAccessRight:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Unknow:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->Succeed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NotInputImage:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->ServiceFailed:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    aput-object v1, v0, v5

    sget-object v1, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->NoAccessRight:Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    aput-object v1, v0, v6

    sput-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->a:[Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;
    .locals 1

    const-class v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    return-object p0
.end method

.method public static values()[Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;
    .locals 1

    sget-object v0, Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->a:[Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    invoke-virtual {v0}, [Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/lasque/tusdk/core/network/analysis/ImageOnlineAnalysis$ImageAnalysisType;

    return-object v0
.end method
