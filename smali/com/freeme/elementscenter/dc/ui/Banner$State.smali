.class public final enum Lcom/freeme/elementscenter/dc/ui/Banner$State;
.super Ljava/lang/Enum;
.source "Banner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/elementscenter/dc/ui/Banner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/freeme/elementscenter/dc/ui/Banner$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/freeme/elementscenter/dc/ui/Banner$State;

.field public static final enum NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

.field public static final enum QUICK_VIEW:Lcom/freeme/elementscenter/dc/ui/Banner$State;

.field public static final enum SMALL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

.field public static final enum SPRING_LOADED:Lcom/freeme/elementscenter/dc/ui/Banner$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/freeme/elementscenter/dc/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;

    const-string v1, "SPRING_LOADED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/freeme/elementscenter/dc/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->SPRING_LOADED:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;

    const-string v1, "SMALL"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/freeme/elementscenter/dc/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->SMALL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    new-instance v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;

    const-string v1, "QUICK_VIEW"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/freeme/elementscenter/dc/ui/Banner$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->QUICK_VIEW:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/freeme/elementscenter/dc/ui/Banner$State;

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->NORMAL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->SPRING_LOADED:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->SMALL:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/freeme/elementscenter/dc/ui/Banner$State;->QUICK_VIEW:Lcom/freeme/elementscenter/dc/ui/Banner$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->$VALUES:[Lcom/freeme/elementscenter/dc/ui/Banner$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/freeme/elementscenter/dc/ui/Banner$State;
    .locals 1

    const-class v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/freeme/elementscenter/dc/ui/Banner$State;

    return-object p0
.end method

.method public static values()[Lcom/freeme/elementscenter/dc/ui/Banner$State;
    .locals 1

    sget-object v0, Lcom/freeme/elementscenter/dc/ui/Banner$State;->$VALUES:[Lcom/freeme/elementscenter/dc/ui/Banner$State;

    invoke-virtual {v0}, [Lcom/freeme/elementscenter/dc/ui/Banner$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/freeme/elementscenter/dc/ui/Banner$State;

    return-object v0
.end method
