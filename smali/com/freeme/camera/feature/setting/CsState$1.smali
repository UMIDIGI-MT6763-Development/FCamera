.class synthetic Lcom/freeme/camera/feature/setting/CsState$1;
.super Ljava/lang/Object;
.source "CsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freeme/camera/feature/setting/CsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/freeme/camera/feature/setting/CsState$State;->values()[Lcom/freeme/camera/feature/setting/CsState$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/freeme/camera/feature/setting/CsState$1;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    :try_start_0
    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$1;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURE_STARTED:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/CsState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$1;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_CAPTURING:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/CsState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/freeme/camera/feature/setting/CsState$1;->$SwitchMap$com$freeme$camera$feature$setting$CsState$State:[I

    sget-object v1, Lcom/freeme/camera/feature/setting/CsState$State;->STATE_STOPPED:Lcom/freeme/camera/feature/setting/CsState$State;

    invoke-virtual {v1}, Lcom/freeme/camera/feature/setting/CsState$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
