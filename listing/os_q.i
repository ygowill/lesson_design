#line 1 "..\\code\\UCOSII\\SOURCE\\os_q.c"





















 

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






	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
#line 26 "..\\code\\UCOSII\\SOURCE\\os_q.c"
































 


void  *OSQAccept (OS_EVENT  *pevent,
                  INT8U     *perr)
{
    void      *pmsg;
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;










#line 84 "..\\code\\UCOSII\\SOURCE\\os_q.c"
    if (pevent->OSEventType != 2u) { 
        *perr = 1u;
        return ((void *)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pq = (OS_Q *)pevent->OSEventPtr;              
    if (pq->OSQEntries > 0u) {                    
        pmsg = *pq->OSQOut++;                     
        pq->OSQEntries--;                         
        if (pq->OSQOut == pq->OSQEnd) {           
            pq->OSQOut = pq->OSQStart;
        }
        *perr = 0u;
    } else {
        *perr = 31u;
        pmsg  = (void *)0;                        
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (pmsg);                                
}

 

















 

OS_EVENT  *OSQCreate (void    **start,
                      INT16U    size)
{
    OS_EVENT  *pevent;
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;










    if (OSIntNesting > 0u) {                      
        return ((OS_EVENT *)0);                   
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pevent = OSEventFreeList;                     
    if (OSEventFreeList != (OS_EVENT *)0) {       
        OSEventFreeList = (OS_EVENT *)OSEventFreeList->OSEventPtr;
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    if (pevent != (OS_EVENT *)0) {                
        {cpu_sr = OS_CPU_SR_Save();};
        pq = OSQFreeList;                         
        if (pq != (OS_Q *)0) {                    
            OSQFreeList            = OSQFreeList->OSQPtr;  
            {OS_CPU_SR_Restore(cpu_sr);};
            pq->OSQStart           = start;                
            pq->OSQEnd             = &start[size];
            pq->OSQIn              = start;
            pq->OSQOut             = start;
            pq->OSQSize            = size;
            pq->OSQEntries         = 0u;
            pevent->OSEventType    = 2u;
            pevent->OSEventCnt     = 0u;
            pevent->OSEventPtr     = pq;



            OS_EventWaitListInit(pevent);                  
        } else {
            pevent->OSEventPtr = (void *)OSEventFreeList;  
            OSEventFreeList    = pevent;
            {OS_CPU_SR_Restore(cpu_sr);};
            pevent = (OS_EVENT *)0;
        }
    }
    return (pevent);
}
 







































 


OS_EVENT  *OSQDel (OS_EVENT  *pevent,
                   INT8U      opt,
                   INT8U     *perr)
{
    BOOLEAN    tasks_waiting;
    OS_EVENT  *pevent_return;
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;










#line 247 "..\\code\\UCOSII\\SOURCE\\os_q.c"
    if (pevent->OSEventType != 2u) {           
        *perr = 1u;
        return (pevent);
    }
    if (OSIntNesting > 0u) {                                
        *perr = 15u;                             
        return (pevent);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0u) {                         
        tasks_waiting = 1u;                            
    } else {
        tasks_waiting = 0u;                           
    }
    switch (opt) {
        case 0u:                                
             if (tasks_waiting == 0u) {



                 pq                     = (OS_Q *)pevent->OSEventPtr;   
                 pq->OSQPtr             = OSQFreeList;
                 OSQFreeList            = pq;
                 pevent->OSEventType    = 0u;
                 pevent->OSEventPtr     = OSEventFreeList;  
                 pevent->OSEventCnt     = 0u;
                 OSEventFreeList        = pevent;           
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                  = 0u;
                 pevent_return          = (OS_EVENT *)0;    
             } else {
                 {OS_CPU_SR_Restore(cpu_sr);};
                 *perr                  = 73u;
                 pevent_return          = pevent;
             }
             break;

        case 1u:                                 
             while (pevent->OSEventGrp != 0u) {             
                 (void)OS_EventTaskRdy(pevent, (void *)0, 0x04u, 0u);
             }



             pq                     = (OS_Q *)pevent->OSEventPtr;    
             pq->OSQPtr             = OSQFreeList;
             OSQFreeList            = pq;
             pevent->OSEventType    = 0u;
             pevent->OSEventPtr     = OSEventFreeList;      
             pevent->OSEventCnt     = 0u;
             OSEventFreeList        = pevent;               
             {OS_CPU_SR_Restore(cpu_sr);};
             if (tasks_waiting == 1u) {                
                 OS_Sched();                                
             }
             *perr                  = 0u;
             pevent_return          = (OS_EVENT *)0;        
             break;

        default:
             {OS_CPU_SR_Restore(cpu_sr);};
             *perr                  = 7u;
             pevent_return          = pevent;
             break;
    }
    return (pevent_return);
}


 

















 


INT8U  OSQFlush (OS_EVENT *pevent)
{
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;




#line 354 "..\\code\\UCOSII\\SOURCE\\os_q.c"
    {cpu_sr = OS_CPU_SR_Save();};
    pq             = (OS_Q *)pevent->OSEventPtr;       
    pq->OSQIn      = pq->OSQStart;
    pq->OSQOut     = pq->OSQStart;
    pq->OSQEntries = 0u;
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}


 


































 

void  *OSQPend (OS_EVENT  *pevent,
                INT32U     timeout,
                INT8U     *perr)
{
    void      *pmsg;
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;










#line 425 "..\\code\\UCOSII\\SOURCE\\os_q.c"
    if (pevent->OSEventType != 2u) { 
        *perr = 1u;
        return ((void *)0);
    }
    if (OSIntNesting > 0u) {                      
        *perr = 2u;                  
        return ((void *)0);
    }
    if (OSLockNesting > 0u) {                     
        *perr = 13u;               
        return ((void *)0);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    pq = (OS_Q *)pevent->OSEventPtr;              
    if (pq->OSQEntries > 0u) {                    
        pmsg = *pq->OSQOut++;                     
        pq->OSQEntries--;                         
        if (pq->OSQOut == pq->OSQEnd) {           
            pq->OSQOut = pq->OSQStart;
        }
        {OS_CPU_SR_Restore(cpu_sr);};
        *perr = 0u;
        return (pmsg);                            
    }
    OSTCBCur->OSTCBStat     |= 0x04u;         
    OSTCBCur->OSTCBStatPend  = 0u;
    OSTCBCur->OSTCBDly       = timeout;           
    OS_EventTaskWait(pevent);                     
    {OS_CPU_SR_Restore(cpu_sr);};
    OS_Sched();                                   
    {cpu_sr = OS_CPU_SR_Save();};
    switch (OSTCBCur->OSTCBStatPend) {                 
        case 0u:                          
             pmsg =  OSTCBCur->OSTCBMsg;
            *perr =  0u;
             break;

        case 2u:
             pmsg = (void *)0;
            *perr =  14u;                
             break;

        case 1u:
        default:
             OS_EventTaskRemove(OSTCBCur, pevent);
             pmsg = (void *)0;
            *perr =  10u;                   
             break;
    }
    OSTCBCur->OSTCBStat          =  0x00u;       
    OSTCBCur->OSTCBStatPend      =  0u;   
    OSTCBCur->OSTCBEventPtr      = (OS_EVENT  *)0;     



    OSTCBCur->OSTCBMsg           = (void      *)0;     
    {OS_CPU_SR_Restore(cpu_sr);};
    return (pmsg);                                     
}
 






























 


INT8U  OSQPendAbort (OS_EVENT  *pevent,
                     INT8U      opt,
                     INT8U     *perr)
{
    INT8U      nbr_tasks;

    OS_CPU_SR  cpu_sr = 0u;










#line 541 "..\\code\\UCOSII\\SOURCE\\os_q.c"
    if (pevent->OSEventType != 2u) {           
        *perr = 1u;
        return (0u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0u) {                         
        nbr_tasks = 0u;
        switch (opt) {
            case 1u:                     
                 while (pevent->OSEventGrp != 0u) {         
                     (void)OS_EventTaskRdy(pevent, (void *)0, 0x04u, 2u);
                     nbr_tasks++;
                 }
                 break;

            case 0u:
            default:                                        
                 (void)OS_EventTaskRdy(pevent, (void *)0, 0x04u, 2u);
                 nbr_tasks++;
                 break;
        }
        {OS_CPU_SR_Restore(cpu_sr);};
        OS_Sched();                                         
        *perr = 14u;
        return (nbr_tasks);
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    *perr = 0u;
    return (0u);                                            
}


 

















 


INT8U  OSQPost (OS_EVENT  *pevent,
                void      *pmsg)
{
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;









    if (pevent->OSEventType != 2u) {       
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0u) {                     
                                                        
        (void)OS_EventTaskRdy(pevent, pmsg, 0x04u, 0u);
        {OS_CPU_SR_Restore(cpu_sr);};
        OS_Sched();                                     
        return (0u);
    }
    pq = (OS_Q *)pevent->OSEventPtr;                    
    if (pq->OSQEntries >= pq->OSQSize) {                
        {OS_CPU_SR_Restore(cpu_sr);};
        return (30u);
    }
    *pq->OSQIn++ = pmsg;                                
    pq->OSQEntries++;                                   
    if (pq->OSQIn == pq->OSQEnd) {                      
        pq->OSQIn = pq->OSQStart;
    }
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

 



















 


INT8U  OSQPostFront (OS_EVENT  *pevent,
                     void      *pmsg)
{
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;









    if (pevent->OSEventType != 2u) {      
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0u) {                    
                                                       
        (void)OS_EventTaskRdy(pevent, pmsg, 0x04u, 0u);
        {OS_CPU_SR_Restore(cpu_sr);};
        OS_Sched();                                    
        return (0u);
    }
    pq = (OS_Q *)pevent->OSEventPtr;                   
    if (pq->OSQEntries >= pq->OSQSize) {               
        {OS_CPU_SR_Restore(cpu_sr);};
        return (30u);
    }
    if (pq->OSQOut == pq->OSQStart) {                  
        pq->OSQOut = pq->OSQEnd;
    }
    pq->OSQOut--;
    *pq->OSQOut = pmsg;                                
    pq->OSQEntries++;                                  
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

 



























 


INT8U  OSQPostOpt (OS_EVENT  *pevent,
                   void      *pmsg,
                   INT8U      opt)
{
    OS_Q      *pq;

    OS_CPU_SR  cpu_sr = 0u;









    if (pevent->OSEventType != 2u) {      
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    if (pevent->OSEventGrp != 0x00u) {                 
        if ((opt & 0x01u) != 0x00u) {  
            while (pevent->OSEventGrp != 0u) {         
                (void)OS_EventTaskRdy(pevent, pmsg, 0x04u, 0u);
            }
        } else {                                       
            (void)OS_EventTaskRdy(pevent, pmsg, 0x04u, 0u);
        }
        {OS_CPU_SR_Restore(cpu_sr);};
        if ((opt & 0x04u) == 0u) {	   
            OS_Sched();                                
        }
        return (0u);
    }
    pq = (OS_Q *)pevent->OSEventPtr;                   
    if (pq->OSQEntries >= pq->OSQSize) {               
        {OS_CPU_SR_Restore(cpu_sr);};
        return (30u);
    }
    if ((opt & 0x02u) != 0x00u) {          
        if (pq->OSQOut == pq->OSQStart) {              
            pq->OSQOut = pq->OSQEnd;                   
        }
        pq->OSQOut--;
        *pq->OSQOut = pmsg;                            
    } else {                                           
        *pq->OSQIn++ = pmsg;                           
        if (pq->OSQIn == pq->OSQEnd) {                 
            pq->OSQIn = pq->OSQStart;
        }
    }
    pq->OSQEntries++;                                  
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}

 
















 


INT8U  OSQQuery (OS_EVENT  *pevent,
                 OS_Q_DATA *p_q_data)
{
    OS_Q       *pq;
    INT8U       i;
    OS_PRIO    *psrc;
    OS_PRIO    *pdest;

    OS_CPU_SR   cpu_sr = 0u;




#line 826 "..\\code\\UCOSII\\SOURCE\\os_q.c"
    if (pevent->OSEventType != 2u) {       
        return (1u);
    }
    {cpu_sr = OS_CPU_SR_Save();};
    p_q_data->OSEventGrp = pevent->OSEventGrp;          
    psrc                 = &pevent->OSEventTbl[0];
    pdest                = &p_q_data->OSEventTbl[0];
    for (i = 0u; i < ((63u) / 8u + 1u); i++) {
        *pdest++ = *psrc++;
    }
    pq = (OS_Q *)pevent->OSEventPtr;
    if (pq->OSQEntries > 0u) {
        p_q_data->OSMsg = *pq->OSQOut;                  
    } else {
        p_q_data->OSMsg = (void *)0;
    }
    p_q_data->OSNMsgs = pq->OSQEntries;
    p_q_data->OSQSize = pq->OSQSize;
    {OS_CPU_SR_Restore(cpu_sr);};
    return (0u);
}


 













 

void  OS_QInit (void)
{






    INT16U   ix;
    INT16U   ix_next;
    OS_Q    *pq1;
    OS_Q    *pq2;



    OS_MemClr((INT8U *)&OSQTbl[0], sizeof(OSQTbl));   
    for (ix = 0u; ix < (4u - 1u); ix++) {      
        ix_next = ix + 1u;
        pq1 = &OSQTbl[ix];
        pq2 = &OSQTbl[ix_next];
        pq1->OSQPtr = pq2;
    }
    pq1         = &OSQTbl[ix];
    pq1->OSQPtr = (OS_Q *)0;
    OSQFreeList = &OSQTbl[0];

}

	 	   	  		 			 	    		   		 		 	 	 			 	    		   	 			 	  	 		 				 		  			 		 					 	  	  		      		  	   		      		  	 		 	      		   		 		  	 		 	      		  		  		  
