#line 1 "..\\code\\UCOSII\\SOURCE\\os_flag.c"





















 

#line 1 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"




















 












 







 

#line 1 "..\\code\\application\\app_cfg.h"







 








											 










 
					









 
void Start_Task(void *p_arg);



#line 45 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\application\\os_cfg.h"






















 





                                        










                                        













                                        





                                        
#line 73 "..\\code\\application\\os_cfg.h"


                                        
#line 83 "..\\code\\application\\os_cfg.h"


                                        
#line 93 "..\\code\\application\\os_cfg.h"


                                        





                                        






                                        
#line 118 "..\\code\\application\\os_cfg.h"


                                        
#line 127 "..\\code\\application\\os_cfg.h"


                                        






                                        







	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 46 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"
#line 1 "..\\code\\UCOSII\\PORTS\\os_cpu.h"






















 
















 

typedef unsigned char  BOOLEAN;
typedef unsigned char  INT8U;                     
typedef signed   char  INT8S;                     
typedef unsigned short INT16U;                    
typedef signed   short INT16S;                    
typedef unsigned int   INT32U;                    
typedef signed   int   INT32S;                    
typedef float          FP32;                      
typedef double         FP64;                      

typedef unsigned int   OS_STK;                    
typedef unsigned int   OS_CPU_SR;                 





















 












 









 


OS_CPU_SR  OS_CPU_SR_Save(void);
void       OS_CPU_SR_Restore(OS_CPU_SR cpu_sr);


void       OSCtxSw(void);
void       OSIntCtxSw(void);
void       OSStartHighRdy(void);

void       OS_CPU_PendSVHandler(void);

                                                   



                                                   

#line 47 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




























#line 88 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"









 




 
#line 111 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 








 
#line 134 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


                                             





 

























 











 









 









 









 









 












 









 


#line 255 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 266 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"













#line 293 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 300 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 311 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 320 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



#line 337 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef  INT8U    OS_PRIO;





typedef struct os_event {
    INT8U    OSEventType;                     
    void    *OSEventPtr;                      
    INT16U   OSEventCnt;                      
    OS_PRIO  OSEventGrp;                      
    OS_PRIO  OSEventTbl[((63u) / 8u + 1u)];   




} OS_EVENT;







 








typedef  INT16U   OS_FLAGS;







typedef struct os_flag_grp {                 
    INT8U         OSFlagType;                
    void         *OSFlagWaitList;            
    OS_FLAGS      OSFlagFlags;               

    INT8U        *OSFlagName;

} OS_FLAG_GRP;



typedef struct os_flag_node {                
    void         *OSFlagNodeNext;            
    void         *OSFlagNodePrev;            
    void         *OSFlagNodeTCB;             
    void         *OSFlagNodeFlagGrp;         
    OS_FLAGS      OSFlagNodeFlags;           
    INT8U         OSFlagNodeWaitType;        
                                             
                                             
                                             
                                             
} OS_FLAG_NODE;


 




 


typedef struct os_mbox_data {
    void   *OSMsg;                          
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];  
    OS_PRIO OSEventGrp;                     
} OS_MBOX_DATA;






 

#line 455 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 


typedef struct os_mutex_data {
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
    BOOLEAN OSValue;                         
    INT8U   OSOwnerPrio;                     
    INT8U   OSMutexPIP;                      
} OS_MUTEX_DATA;






 


typedef struct os_q {                    
    struct os_q   *OSQPtr;               
    void         **OSQStart;             
    void         **OSQEnd;               
    void         **OSQIn;                
    void         **OSQOut;               
    INT16U         OSQSize;              
    INT16U         OSQEntries;           
} OS_Q;


typedef struct os_q_data {
    void          *OSMsg;                
    INT16U         OSNMsgs;              
    INT16U         OSQSize;              
    OS_PRIO        OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO        OSEventGrp;           
} OS_Q_DATA;






 


typedef struct os_sem_data {
    INT16U  OSCnt;                           
    OS_PRIO OSEventTbl[((63u) / 8u + 1u)];   
    OS_PRIO OSEventGrp;                      
} OS_SEM_DATA;






 


typedef struct os_stk_data {
    INT32U  OSFree;                     
    INT32U  OSUsed;                     
} OS_STK_DATA;


 




 

typedef struct os_tcb {
    OS_STK          *OSTCBStkPtr;            


    void            *OSTCBExtPtr;            
    OS_STK          *OSTCBStkBottom;         
    INT32U           OSTCBStkSize;           
    INT16U           OSTCBOpt;               
    INT16U           OSTCBId;                


    struct os_tcb   *OSTCBNext;              
    struct os_tcb   *OSTCBPrev;              


    OS_EVENT        *OSTCBEventPtr;          







    void            *OSTCBMsg;               




    OS_FLAG_NODE    *OSTCBFlagNode;          

    OS_FLAGS         OSTCBFlagsRdy;          


    INT32U           OSTCBDly;               
    INT8U            OSTCBStat;              
    INT8U            OSTCBStatPend;          
    INT8U            OSTCBPrio;              

    INT8U            OSTCBX;                 
    INT8U            OSTCBY;                 
    OS_PRIO          OSTCBBitX;              
    OS_PRIO          OSTCBBitY;              


    INT8U            OSTCBDelReq;            



    INT32U           OSTCBCtxSwCtr;          
    INT32U           OSTCBCyclesTot;         
    INT32U           OSTCBCyclesStart;       
    OS_STK          *OSTCBStkBase;           
    INT32U           OSTCBStkUsed;           



    INT8U           *OSTCBTaskName;



    INT32U           OSTCBRegTbl[1u];

} OS_TCB;

 




 

#line 636 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

 




 

extern  INT32U            OSCtxSwCtr;                


extern  OS_EVENT         *OSEventFreeList;           
extern  OS_EVENT          OSEventTbl[10u]; 



extern  OS_FLAG_GRP       OSFlagTbl[5u];   
extern  OS_FLAG_GRP      *OSFlagFreeList;            



extern  INT8U             OSCPUUsage;                
extern  INT32U            OSIdleCtrMax;              
extern  INT32U            OSIdleCtrRun;              
extern  BOOLEAN           OSStatRdy;                 
extern  OS_STK            OSTaskStatStk[128u];       


extern  INT8U             OSIntNesting;              

extern  INT8U             OSLockNesting;             

extern  INT8U             OSPrioCur;                 
extern  INT8U             OSPrioHighRdy;             

extern  OS_PRIO           OSRdyGrp;                         
extern  OS_PRIO           OSRdyTbl[((63u) / 8u + 1u)];        

extern  BOOLEAN           OSRunning;                        

extern  INT8U             OSTaskCtr;                        

extern  volatile  INT32U  OSIdleCtr;                                  





extern  OS_STK            OSTaskIdleStk[128u];       


extern  OS_TCB           *OSTCBCur;                         
extern  OS_TCB           *OSTCBFreeList;                    
extern  OS_TCB           *OSTCBHighRdy;                     
extern  OS_TCB           *OSTCBList;                        
extern  OS_TCB           *OSTCBPrioTbl[63u + 1u];     
extern  OS_TCB            OSTCBTbl[5u + 2u];    


extern  INT8U             OSTickStepState;           








extern  OS_Q             *OSQFreeList;               
extern  OS_Q              OSQTbl[4u];         



extern  volatile  INT32U  OSTime;                    


#line 726 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

extern  INT8U   const     OSUnMapTbl[256];           

 





 





 



#line 754 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

#line 762 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 




OS_FLAGS      OSFlagAccept            (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagCreate            (OS_FLAGS         flags,
                                       INT8U           *perr);


OS_FLAG_GRP  *OSFlagDel               (OS_FLAG_GRP     *pgrp,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSFlagNameGet           (OS_FLAG_GRP     *pgrp,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSFlagNameSet           (OS_FLAG_GRP     *pgrp,
                                       INT8U           *pname,
                                       INT8U           *perr);


OS_FLAGS      OSFlagPend              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            wait_type,
                                       INT32U           timeout,
                                       INT8U           *perr);

OS_FLAGS      OSFlagPendGetFlagsRdy   (void);
OS_FLAGS      OSFlagPost              (OS_FLAG_GRP     *pgrp,
                                       OS_FLAGS         flags,
                                       INT8U            opt,
                                       INT8U           *perr);


OS_FLAGS      OSFlagQuery             (OS_FLAG_GRP     *pgrp,
                                       INT8U           *perr);







 




void         *OSMboxAccept            (OS_EVENT        *pevent);


OS_EVENT     *OSMboxCreate            (void            *pmsg);


OS_EVENT     *OSMboxDel               (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void         *OSMboxPend              (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSMboxPendAbort         (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSMboxPost              (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSMboxPostOpt           (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSMboxQuery             (OS_EVENT        *pevent,
                                       OS_MBOX_DATA    *p_mbox_data);







 

#line 897 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 




BOOLEAN       OSMutexAccept           (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSMutexCreate           (INT8U            prio,
                                       INT8U           *perr);


OS_EVENT     *OSMutexDel              (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSMutexPend             (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);

INT8U         OSMutexPost             (OS_EVENT        *pevent);


INT8U         OSMutexQuery            (OS_EVENT        *pevent,
                                       OS_MUTEX_DATA   *p_mutex_data);




 




 




void         *OSQAccept               (OS_EVENT        *pevent,
                                       INT8U           *perr);


OS_EVENT     *OSQCreate               (void           **start,
                                       INT16U           size);


OS_EVENT     *OSQDel                  (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQFlush                (OS_EVENT        *pevent);


void         *OSQPend                 (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSQPendAbort            (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);



INT8U         OSQPost                 (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostFront            (OS_EVENT        *pevent,
                                       void            *pmsg);



INT8U         OSQPostOpt              (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            opt);



INT8U         OSQQuery                (OS_EVENT        *pevent,
                                       OS_Q_DATA       *p_q_data);




 




 



INT16U        OSSemAccept             (OS_EVENT        *pevent);


OS_EVENT     *OSSemCreate             (INT16U           cnt);


OS_EVENT     *OSSemDel                (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


void          OSSemPend               (OS_EVENT        *pevent,
                                       INT32U           timeout,
                                       INT8U           *perr);


INT8U         OSSemPendAbort          (OS_EVENT        *pevent,
                                       INT8U            opt,
                                       INT8U           *perr);


INT8U         OSSemPost               (OS_EVENT        *pevent);


INT8U         OSSemQuery              (OS_EVENT        *pevent,
                                       OS_SEM_DATA     *p_sem_data);



void          OSSemSet                (OS_EVENT        *pevent,
                                       INT16U           cnt,
                                       INT8U           *perr);




 




 

INT8U         OSTaskChangePrio        (INT8U            oldprio,
                                       INT8U            newprio);



INT8U         OSTaskCreate            (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio);



INT8U         OSTaskCreateExt         (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT8U            prio,
                                       INT16U           id,
                                       OS_STK          *pbos,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);



INT8U         OSTaskDel               (INT8U            prio);
INT8U         OSTaskDelReq            (INT8U            prio);



INT8U         OSTaskNameGet           (INT8U            prio,
                                       INT8U          **pname,
                                       INT8U           *perr);

void          OSTaskNameSet           (INT8U            prio,
                                       INT8U           *pname,
                                       INT8U           *perr);



INT8U         OSTaskResume            (INT8U            prio);
INT8U         OSTaskSuspend           (INT8U            prio);



INT8U         OSTaskStkChk            (INT8U            prio,
                                       OS_STK_DATA     *p_stk_data);



INT8U         OSTaskQuery             (INT8U            prio,
                                       OS_TCB          *p_task_data);





INT32U        OSTaskRegGet            (INT8U            prio,
                                       INT8U            id,
                                       INT8U           *perr);

void          OSTaskRegSet            (INT8U            prio,
                                       INT8U            id,
                                       INT32U           value,
                                       INT8U           *perr);


 




 

void          OSTimeDly               (INT32U           ticks);


INT8U         OSTimeDlyHMSM           (INT8U            hours,
                                       INT8U            minutes,
                                       INT8U            seconds,
                                       INT16U           ms);



INT8U         OSTimeDlyResume         (INT8U            prio);



INT32U        OSTimeGet               (void);
void          OSTimeSet               (INT32U           ticks);


void          OSTimeTick              (void);





 

#line 1177 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 

void          OSInit                  (void);

void          OSIntEnter              (void);
void          OSIntExit               (void);






void          OSSchedLock             (void);
void          OSSchedUnlock           (void);


void          OSStart                 (void);

void          OSStatInit              (void);

INT16U        OSVersion               (void);

 





 


void          OS_Dummy                (void);



INT8U         OS_EventTaskRdy         (OS_EVENT        *pevent,
                                       void            *pmsg,
                                       INT8U            msk,
                                       INT8U            pend_stat);

void          OS_EventTaskWait        (OS_EVENT        *pevent);

void          OS_EventTaskRemove      (OS_TCB          *ptcb,
                                       OS_EVENT        *pevent);

#line 1233 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"

void          OS_EventWaitListInit    (OS_EVENT        *pevent);



void          OS_FlagInit             (void);
void          OS_FlagUnlink           (OS_FLAG_NODE    *pnode);


void          OS_MemClr               (INT8U           *pdest,
                                       INT16U           size);

void          OS_MemCopy              (INT8U           *pdest,
                                       INT8U           *psrc,
                                       INT16U           size);






void          OS_QInit                (void);


void          OS_Sched                (void);


INT8U         OS_StrLen               (INT8U           *psrc);


void          OS_TaskIdle             (void            *p_arg);

void          OS_TaskReturn           (void);


void          OS_TaskStat             (void            *p_arg);



void          OS_TaskStkClr           (OS_STK          *pbos,
                                       INT32U           size,
                                       INT16U           opt);



void          OS_TaskStatStkChk       (void);


INT8U         OS_TCBInit              (INT8U            prio,
                                       OS_STK          *ptos,
                                       OS_STK          *pbos,
                                       INT16U           id,
                                       INT32U           stk_size,
                                       void            *pext,
                                       INT16U           opt);





 





 





void          OSInitHookBegin         (void);
void          OSInitHookEnd           (void);

void          OSTaskCreateHook        (OS_TCB          *ptcb);
void          OSTaskDelHook           (OS_TCB          *ptcb);

void          OSTaskIdleHook          (void);

void          OSTaskReturnHook        (OS_TCB          *ptcb);

void          OSTaskStatHook          (void);
OS_STK       *OSTaskStkInit           (void           (*task)(void *p_arg),
                                       void            *p_arg,
                                       OS_STK          *ptos,
                                       INT16U           opt);


void          OSTaskSwHook            (void);


void          OSTCBInitHook           (OS_TCB          *ptcb);


void          OSTimeTickHook          (void);


 





 

#line 1358 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"







 







 










 





 

#line 1402 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






























 

#line 1440 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"


























 

#line 1478 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1500 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"














 

#line 1526 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






































 

#line 1572 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






















 

#line 1602 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"























































#line 1664 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"





 





















 

#line 1737 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






 


























#line 1777 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"



































 

#line 1889 "..\\code\\UCOSII\\SOURCE\\ucos_ii.h"






	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 26 "..\\code\\UCOSII\\SOURCE\\os_flag.c"







 

static  void     OS_FlagBlock(OS_FLAG_GRP *pgrp, OS_FLAG_NODE *pnode, OS_FLAGS flags, INT8U wait_type, INT32U timeout);
static  BOOLEAN  OS_FlagTaskRdy(OS_FLAG_NODE *pnode, OS_FLAGS flags_rdy);

 


















































 


OS_FLAGS  OSFlagAccept (OS_FLAG_GRP  *pgrp,
                        OS_FLAGS      flags,
                        INT8U         wait_type,
                        INT8U        *perr)
{
    OS_FLAGS      flags_rdy;
    INT8U         result;
    BOOLEAN       consume;

    OS_CPU_SR     cpu_sr = 0u;










#line 118 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (pgrp->OSFlagType != 5u) {           
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
    result = (INT8U)(wait_type & 0x80u);
    if (result != (INT8U)0) {                               
        wait_type &= ~0x80u;
        consume    = 1u;
    } else {
        consume    = 0u;
    }
 
    *perr = 0u;                                    
    {cpu_sr = OS_CPU_SR_Save();};
    switch (wait_type) {
        case 2u:                          
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);      
             if (flags_rdy == flags) {                      
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;      
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;

        case 3u:
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);      
             if (flags_rdy != (OS_FLAGS)0) {                
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;      
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;


        case 0u:                          
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;     
             if (flags_rdy == flags) {                      
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags |= flags_rdy;        
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;

        case 1u:
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;    
             if (flags_rdy != (OS_FLAGS)0) {                
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags |= flags_rdy;        
                 }
             } else {
                 *perr = 112u;
             }
             {OS_CPU_SR_Restore(cpu_sr);};
             break;


        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             flags_rdy = (OS_FLAGS)0;
             *perr     = 111u;
             break;
    }
    return (flags_rdy);
}


 


















 

OS_FLAG_GRP  *OSFlagCreate (OS_FLAGS  flags,
                            INT8U    *perr)
{
    OS_FLAG_GRP *pgrp;

    OS_CPU_SR    cpu_sr = 0u;
















    if (OSIntNesting > 0u) {                         
        *perr = 16u;                   
        return ((OS_FLAG_GRP *)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pgrp = OSFlagFreeList;                           
    if (pgrp != (OS_FLAG_GRP *)0) {                  
                                                     
        OSFlagFreeList       = (OS_FLAG_GRP *)OSFlagFreeList->OSFlagWaitList;
        pgrp->OSFlagType     = 5u;   
        pgrp->OSFlagFlags    = flags;                
        pgrp->OSFlagWaitList = (void *)0;            

        pgrp->OSFlagName     = (INT8U *)(void *)"?";

        {OS_CPU_SR_Restore(cpu_sr);};
        *perr                = 0u;
    } else {
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr                = 114u;
    }
    return (pgrp);                                   
}

 


































 


OS_FLAG_GRP  *OSFlagDel (OS_FLAG_GRP  *pgrp,
                         INT8U         opt,
                         INT8U        *perr)
{
    BOOLEAN       tasks_waiting;
    OS_FLAG_NODE *pnode;
    OS_FLAG_GRP  *pgrp_return;

    OS_CPU_SR     cpu_sr = 0u;










#line 323 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (OSIntNesting > 0u) {                                
        *perr = 15u;                             
        return (pgrp);
    }
    if (pgrp->OSFlagType != 5u) {           
        *perr = 1u;
        return (pgrp);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pgrp->OSFlagWaitList != (void *)0) {                
        tasks_waiting = 1u;                            
    } else {
        tasks_waiting = 0u;                           
    }
    switch (opt) {
        case 0u:                                
             if (tasks_waiting == 0u) {

                 pgrp->OSFlagName     = (INT8U *)(void *)"?";

                 pgrp->OSFlagType     = 0u;
                 pgrp->OSFlagWaitList = (void *)OSFlagFreeList;  
                 pgrp->OSFlagFlags    = (OS_FLAGS)0;
                 OSFlagFreeList       = pgrp;
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                = 0u;
                 pgrp_return          = (OS_FLAG_GRP *)0;   
             } else {
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                = 73u;
                 pgrp_return          = pgrp;
             }
             break;

        case 1u:                                 
             pnode = (OS_FLAG_NODE *)pgrp->OSFlagWaitList;
             while (pnode != (OS_FLAG_NODE *)0) {           
                 (void)OS_FlagTaskRdy(pnode, (OS_FLAGS)0);
                 pnode = (OS_FLAG_NODE *)pnode->OSFlagNodeNext;
             }

             pgrp->OSFlagName     = (INT8U *)(void *)"?";

             pgrp->OSFlagType     = 0u;
             pgrp->OSFlagWaitList = (void *)OSFlagFreeList; 
             pgrp->OSFlagFlags    = (OS_FLAGS)0;
             OSFlagFreeList       = pgrp;
             {OS_CPU_SR_Restore(cpu_sr);};
             if (tasks_waiting == 1u) {                
                 OS_Sched();                                
             }
             *perr = 0u;
             pgrp_return          = (OS_FLAG_GRP *)0;       
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             *perr                = 7u;
             pgrp_return          = pgrp;
             break;
    }
    return (pgrp_return);
}

 





















 


INT8U  OSFlagNameGet (OS_FLAG_GRP   *pgrp,
                      INT8U        **pname,
                      INT8U         *perr)
{
    INT8U      len;

    OS_CPU_SR  cpu_sr = 0u;










#line 439 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (OSIntNesting > 0u) {                      
        *perr = 17u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pgrp->OSFlagType != 5u) {
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr = 1u;
        return (0u);
    }
    *pname = pgrp->OSFlagName;
    len    = OS_StrLen(*pname);
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr  = 0u;
    return (len);
}


 





















 


void  OSFlagNameSet (OS_FLAG_GRP  *pgrp,
                     INT8U        *pname,
                     INT8U        *perr)
{

    OS_CPU_SR  cpu_sr = 0u;










#line 508 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (OSIntNesting > 0u) {                      
        *perr = 18u;
        return;
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pgrp->OSFlagType != 5u) {
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr = 1u;
        return;
    }
    pgrp->OSFlagName = pname;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr            = 0u;
    return;
}


 




















































 

OS_FLAGS  OSFlagPend (OS_FLAG_GRP  *pgrp,
                      OS_FLAGS      flags,
                      INT8U         wait_type,
                      INT32U        timeout,
                      INT8U        *perr)
{
    OS_FLAG_NODE  node;
    OS_FLAGS      flags_rdy;
    INT8U         result;
    INT8U         pend_stat;
    BOOLEAN       consume;

    OS_CPU_SR     cpu_sr = 0u;










#line 609 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (OSIntNesting > 0u) {                                
        *perr = 2u;                            
        return ((OS_FLAGS)0);
    }
    if (OSLockNesting > 0u) {                               
        *perr = 13u;                         
        return ((OS_FLAGS)0);
    }
    if (pgrp->OSFlagType != 5u) {           
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
    result = (INT8U)(wait_type & 0x80u);
    if (result != (INT8U)0) {                               
        wait_type &= (INT8U)~(INT8U)0x80u;
        consume    = 1u;
    } else {
        consume    = 0u;
    }
 
    {cpu_sr = OS_CPU_SR_Save();};
    switch (wait_type) {
        case 2u:                          
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);    
             if (flags_rdy == flags) {                      
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;    
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;       
                 {OS_CPU_SR_Restore(cpu_sr);};                        
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                       
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;

        case 3u:
             flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & flags);     
             if (flags_rdy != (OS_FLAGS)0) {                
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;     
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;       
                 {OS_CPU_SR_Restore(cpu_sr);};                        
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                       
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;


        case 0u:                          
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;     
             if (flags_rdy == flags) {                      
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags |= flags_rdy;        
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;       
                 {OS_CPU_SR_Restore(cpu_sr);};                        
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                       
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;

        case 1u:
             flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & flags;    
             if (flags_rdy != (OS_FLAGS)0) {                
                 if (consume == 1u) {                  
                     pgrp->OSFlagFlags |= flags_rdy;        
                 }
                 OSTCBCur->OSTCBFlagsRdy = flags_rdy;       
                 {OS_CPU_SR_Restore(cpu_sr);};                        
                 *perr                   = 0u;
                 return (flags_rdy);
             } else {                                       
                 OS_FlagBlock(pgrp, &node, flags, wait_type, timeout);
                 {OS_CPU_SR_Restore(cpu_sr);};
             }
             break;


        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             flags_rdy = (OS_FLAGS)0;
             *perr      = 111u;
             return (flags_rdy);
    }
 
    OS_Sched();                                             
    {cpu_sr = OS_CPU_SR_Save();};
    if (OSTCBCur->OSTCBStatPend != 0u) {       
        pend_stat                = OSTCBCur->OSTCBStatPend;
        OSTCBCur->OSTCBStatPend  = 0u;
        OS_FlagUnlink(&node);
        OSTCBCur->OSTCBStat      = 0x00u;             
        {OS_CPU_SR_Restore(cpu_sr);};
        flags_rdy                = (OS_FLAGS)0;
        switch (pend_stat) {
            case 2u:
                 *perr = 14u;                 
                 break;

            case 1u:
            default:
                 *perr = 10u;                    
                 break;
        }
        return (flags_rdy);
    }
    flags_rdy = OSTCBCur->OSTCBFlagsRdy;
    if (consume == 1u) {                               
        switch (wait_type) {
            case 2u:
            case 3u:                      
                 pgrp->OSFlagFlags &= (OS_FLAGS)~flags_rdy;
                 break;


            case 0u:
            case 1u:                      
                 pgrp->OSFlagFlags |=  flags_rdy;
                 break;

            default:
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr = 111u;
                 return ((OS_FLAGS)0);
        }
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;                                    
    return (flags_rdy);
}
 













 

OS_FLAGS  OSFlagPendGetFlagsRdy (void)
{
    OS_FLAGS      flags;

    OS_CPU_SR     cpu_sr = 0u;




    {cpu_sr = OS_CPU_SR_Save();};
    flags = OSTCBCur->OSTCBFlagsRdy;
    {OS_CPU_SR_Restore(cpu_sr);};
    return (flags);
}

 








































 
OS_FLAGS  OSFlagPost (OS_FLAG_GRP  *pgrp,
                      OS_FLAGS      flags,
                      INT8U         opt,
                      INT8U        *perr)
{
    OS_FLAG_NODE *pnode;
    BOOLEAN       sched;
    OS_FLAGS      flags_cur;
    OS_FLAGS      flags_rdy;
    BOOLEAN       rdy;

    OS_CPU_SR     cpu_sr = 0u;










#line 850 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (pgrp->OSFlagType != 5u) {     
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
 
    {cpu_sr = OS_CPU_SR_Save();};
    switch (opt) {
        case 0u:
             pgrp->OSFlagFlags &= (OS_FLAGS)~flags;   
             break;

        case 1u:
             pgrp->OSFlagFlags |=  flags;             
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};                      
             *perr = 113u;
             return ((OS_FLAGS)0);
    }
    sched = 0u;                                 
    pnode = (OS_FLAG_NODE *)pgrp->OSFlagWaitList;
    while (pnode != (OS_FLAG_NODE *)0) {              
        switch (pnode->OSFlagNodeWaitType) {
            case 2u:                
                 flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & pnode->OSFlagNodeFlags);
                 if (flags_rdy == pnode->OSFlagNodeFlags) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);   
                     if (rdy == 1u) {
                         sched = 1u;                      
                     }
                 }
                 break;

            case 3u:                
                 flags_rdy = (OS_FLAGS)(pgrp->OSFlagFlags & pnode->OSFlagNodeFlags);
                 if (flags_rdy != (OS_FLAGS)0) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);   
                     if (rdy == 1u) {
                         sched = 1u;                      
                     }
                 }
                 break;


            case 0u:                
                 flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & pnode->OSFlagNodeFlags;
                 if (flags_rdy == pnode->OSFlagNodeFlags) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);   
                     if (rdy == 1u) {
                         sched = 1u;                      
                     }
                 }
                 break;

            case 1u:                
                 flags_rdy = (OS_FLAGS)~pgrp->OSFlagFlags & pnode->OSFlagNodeFlags;
                 if (flags_rdy != (OS_FLAGS)0) {
                     rdy = OS_FlagTaskRdy(pnode, flags_rdy);   
                     if (rdy == 1u) {
                         sched = 1u;                      
                     }
                 }
                 break;

            default:
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr = 111u;
                 return ((OS_FLAGS)0);
        }
        pnode = (OS_FLAG_NODE *)pnode->OSFlagNodeNext;  
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    if (sched == 1u) {
        OS_Sched();
    }
    {cpu_sr = OS_CPU_SR_Save();};
    flags_cur = pgrp->OSFlagFlags;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr     = 0u;
    return (flags_cur);
}
 

















 


OS_FLAGS  OSFlagQuery (OS_FLAG_GRP  *pgrp,
                       INT8U        *perr)
{
    OS_FLAGS   flags;

    OS_CPU_SR  cpu_sr = 0u;










#line 975 "..\\code\\UCOSII\\SOURCE\\os_flag.c"
    if (pgrp->OSFlagType != 5u) {  
        *perr = 1u;
        return ((OS_FLAGS)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    flags = pgrp->OSFlagFlags;
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (flags);                                
}


 



































 

static  void  OS_FlagBlock (OS_FLAG_GRP  *pgrp,
                            OS_FLAG_NODE *pnode,
                            OS_FLAGS      flags,
                            INT8U         wait_type,
                            INT32U        timeout)
{
    OS_FLAG_NODE  *pnode_next;
    INT8U          y;


    OSTCBCur->OSTCBStat      |= 0x20u;
    OSTCBCur->OSTCBStatPend   = 0u;
    OSTCBCur->OSTCBDly        = timeout;               

    OSTCBCur->OSTCBFlagNode   = pnode;                 

    pnode->OSFlagNodeFlags    = flags;                 
    pnode->OSFlagNodeWaitType = wait_type;             
    pnode->OSFlagNodeTCB      = (void *)OSTCBCur;      
    pnode->OSFlagNodeNext     = pgrp->OSFlagWaitList;  
    pnode->OSFlagNodePrev     = (void *)0;
    pnode->OSFlagNodeFlagGrp  = (void *)pgrp;          
    pnode_next                = (OS_FLAG_NODE *)pgrp->OSFlagWaitList;
    if (pnode_next != (void *)0) {                     
        pnode_next->OSFlagNodePrev = pnode;            
    }
    pgrp->OSFlagWaitList = (void *)pnode;

    y            =  OSTCBCur->OSTCBY;                  
    OSRdyTbl[y] &= (OS_PRIO)~OSTCBCur->OSTCBBitX;
    if (OSRdyTbl[y] == 0x00u) {
        OSRdyGrp &= (OS_PRIO)~OSTCBCur->OSTCBBitY;
    }
}

 













 

void  OS_FlagInit (void)
{
#line 1087 "..\\code\\UCOSII\\SOURCE\\os_flag.c"


    INT16U        ix;
    INT16U        ix_next;
    OS_FLAG_GRP  *pgrp1;
    OS_FLAG_GRP  *pgrp2;


    OS_MemClr((INT8U *)&OSFlagTbl[0], sizeof(OSFlagTbl));            
    for (ix = 0u; ix < (5u - 1u); ix++) {                  
        ix_next = ix + 1u;
        pgrp1 = &OSFlagTbl[ix];
        pgrp2 = &OSFlagTbl[ix_next];
        pgrp1->OSFlagType     = 0u;
        pgrp1->OSFlagWaitList = (void *)pgrp2;

        pgrp1->OSFlagName     = (INT8U *)(void *)"?";                

    }
    pgrp1                 = &OSFlagTbl[ix];
    pgrp1->OSFlagType     = 0u;
    pgrp1->OSFlagWaitList = (void *)0;

    pgrp1->OSFlagName     = (INT8U *)(void *)"?";                    

    OSFlagFreeList        = &OSFlagTbl[0];

}

 





















 

static  BOOLEAN  OS_FlagTaskRdy (OS_FLAG_NODE *pnode,
                                 OS_FLAGS      flags_rdy)
{
    OS_TCB   *ptcb;
    BOOLEAN   sched;


    ptcb                 = (OS_TCB *)pnode->OSFlagNodeTCB;  
    ptcb->OSTCBDly       = 0u;
    ptcb->OSTCBFlagsRdy  = flags_rdy;
    ptcb->OSTCBStat     &= (INT8U)~(INT8U)0x20u;
    ptcb->OSTCBStatPend  = 0u;
    if (ptcb->OSTCBStat == 0x00u) {                   
        OSRdyGrp               |= ptcb->OSTCBBitY;          
        OSRdyTbl[ptcb->OSTCBY] |= ptcb->OSTCBBitX;
        sched                   = 1u;
    } else {
        sched                   = 0u;
    }
    OS_FlagUnlink(pnode);
    return (sched);
}

 



















 

void  OS_FlagUnlink (OS_FLAG_NODE *pnode)
{

    OS_TCB       *ptcb;

    OS_FLAG_GRP  *pgrp;
    OS_FLAG_NODE *pnode_prev;
    OS_FLAG_NODE *pnode_next;


    pnode_prev = (OS_FLAG_NODE *)pnode->OSFlagNodePrev;
    pnode_next = (OS_FLAG_NODE *)pnode->OSFlagNodeNext;
    if (pnode_prev == (OS_FLAG_NODE *)0) {                       
        pgrp                 = (OS_FLAG_GRP *)pnode->OSFlagNodeFlagGrp;
        pgrp->OSFlagWaitList = (void *)pnode_next;               
        if (pnode_next != (OS_FLAG_NODE *)0) {
            pnode_next->OSFlagNodePrev = (OS_FLAG_NODE *)0;      
        }
    } else {                                                     
        pnode_prev->OSFlagNodeNext = pnode_next;                 
        if (pnode_next != (OS_FLAG_NODE *)0) {                   
            pnode_next->OSFlagNodePrev = pnode_prev;             
        }
    }

    ptcb                = (OS_TCB *)pnode->OSFlagNodeTCB;
    ptcb->OSTCBFlagNode = (OS_FLAG_NODE *)0;

}

	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
