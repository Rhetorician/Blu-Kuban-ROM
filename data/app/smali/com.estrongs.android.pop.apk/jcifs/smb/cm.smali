.class public interface abstract Ljcifs/smb/cm;
.super Ljava/lang/Object;


# static fields
.field public static final a_:[I

.field public static final b_:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v1, 0x9

    new-array v0, v1, [I

    fill-array-data v0, :array_3c

    sput-object v0, Ljcifs/smb/cm;->a_:[I

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "The operation completed successfully."

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Access is denied."

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "No more connections can be made to this remote computer at this time because there are already as many connections as the computer can accept."

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "The pipe state is invalid."

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "All pipe instances are busy."

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "The pipe is being closed."

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "No process is on the other end of the pipe."

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "More data is available."

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "The list of servers for this workgroup is not currently available."

    aput-object v2, v0, v1

    sput-object v0, Ljcifs/smb/cm;->b_:[Ljava/lang/String;

    return-void

    :array_3c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x47t 0x0t 0x0t 0x0t
        0xe6t 0x0t 0x0t 0x0t
        0xe7t 0x0t 0x0t 0x0t
        0xe8t 0x0t 0x0t 0x0t
        0xe9t 0x0t 0x0t 0x0t
        0xeat 0x0t 0x0t 0x0t
        0xe6t 0x17t 0x0t 0x0t
    .end array-data
.end method
