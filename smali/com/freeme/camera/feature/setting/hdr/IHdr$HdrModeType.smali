.class public final enum Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;
.super Ljava/lang/Enum;
.source "IHdr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/hdr/IHdr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HdrModeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum MVHDR_PHOTP:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum MVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum NONVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum NONVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum SCENE_MODE_DEFAULT:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum ZVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

.field public static final enum ZVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "SCENE_MODE_DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->SCENE_MODE_DEFAULT:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "ZVHDR_PHOTO"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "MVHDR_PHOTP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_PHOTP:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "NONVHDR_PHOTO"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "ZVHDR_VIDEO"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "MVHDR_VIDEO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    new-instance v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const-string v1, "NONVHDR_VIDEO"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->SCENE_MODE_DEFAULT:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_PHOTP:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_PHOTO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->ZVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->MVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->NONVHDR_VIDEO:Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    aput-object v1, v0, v8

    sput-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->$VALUES:[Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;
    .locals 1

    const-class v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    return-object p0
.end method

.method public static values()[Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;
    .locals 1

    sget-object v0, Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->$VALUES:[Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    invoke-virtual {v0}, [Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/camera/feature/setting/hdr/IHdr$HdrModeType;

    return-object v0
.end method
